bool QuerySvn(const string& workingDir, string& revision, string &date)
{
    revision = "0";
    date = "unknown date";

    string svncmd("svn info --xml --non-interactive ");
    svncmd.append(workingDir);

    FILE *svn = popen(svncmd.c_str(), "r");

    // first try svn info with xml-output
    if(svn)
    {
        char buf[16384] = {'0'};
        fread(buf, 16383, 1, svn);
        int ret = pclose(svn);
        if(WIFEXITED(ret) && (WEXITSTATUS(ret) == 0))
        {
            TiXmlDocument doc;
            doc.Parse(buf);

            if(doc.Error())
                return false;

            TiXmlHandle hCommit(&doc);
            hCommit = hCommit.FirstChildElement("info").FirstChildElement("entry").FirstChildElement("commit");
            if(const TiXmlElement* e = hCommit.ToElement())
            {
                revision = e->Attribute("revision") ? e->Attribute("revision") : "";
                const TiXmlElement* d = e->FirstChildElement("date");
                if(d && d->GetText())
                {
                    date = d->GetText();
                    string::size_type pos = date.find('T');
                    if (pos != string::npos)
                    {
                        date[pos] = ' ';
                    }
                    pos = date.rfind('.');
                    if (pos != string::npos)
                    {
                        date = date.substr(0, pos);            }
                    }
                    return true;
            }
            return false;
        }
    }

    // ensure we have an english environment, needed
    // to correctly parse output of localized (git) svn info
#ifndef __MINGW32__
    setenv("LC_ALL", "C", 1);
#else
    setlocale(LC_ALL, "C");
#endif

    svncmd = "git svn info ";
    svncmd.append(workingDir);
    svn = popen(svncmd.c_str(), "r");
    // second try git svn info
    if(svn)
    {
        char buf[16384] = {'0'};
        fread(buf, 16383, 1, svn);
        int ret = pclose(svn);
        if (!WIFEXITED(ret) || (WEXITSTATUS(ret) != 0))
        {
            svncmd = "svn info --non-interactive ";
            svncmd.append(workingDir);
            svn = popen(svncmd.c_str(), "r");

            // third try oldstyle (outated) svn info (should not be needed anymore)
            if(svn)
            {
                memset(buf, 0, 16384);
                fread(buf, 16383, 1, svn);
                ret = pclose(svn);
                if (!WIFEXITED(ret) || (WEXITSTATUS(ret) != 0))
                    return true;
            }
            else
                return true;
        }
        string what("Last Changed Rev: ");
        string output(buf);
        string::size_type pos = string::npos;
        string::size_type len = 0;
        pos = output.find(what);
        if (pos != string::npos)
        {
            pos += what.length();
            len = 0;
            // revision must be numeric
            while (buf[ pos + len ] >= '0' && buf[ pos + len++ ] <= '9')
                ;
        }
        if (len != 0)
            revision = output.substr(pos, len);

        what = "Last Changed Date: ";
        pos = output.find(what);
        if (pos != string::npos)
        {
            pos += what.length();
            len = output.find(" ", pos);
            // we want the position of the second space
            if (len != string::npos)
                len = output.find(" ", len + 1);
            if (len != string::npos)
                len -= pos;
            else
                len = 0;
        }
        if (len != 0)
            date = output.substr(pos, len);

        return false;
    }
    // if we are here, we could not read the info
    return true;
}

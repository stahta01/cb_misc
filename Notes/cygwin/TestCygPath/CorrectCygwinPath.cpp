/*
 * This file is part of the Code::Blocks IDE and licensed under the GNU General Public License, version 3
 * http://www.gnu.org/licenses/gpl-3.0.html
 *
 * $Revision$
 * $Id$
 * $HeadURL$
 */

#include "globals.h"

void CorrectCygwinPath(wxString& path)
{
    unsigned int i=0, EscCount=0;

    // preserve any escape characters at start of path - this is true for
    // breakpoints - value is 2, but made dynamic for safety as we
    // are only checking for the CDprefix not any furthur correctness
    if (path.GetChar(0)==g_EscapeChar)
    {
        while ( (i<path.Len()) && (path.GetChar(i)==g_EscapeChar) )
        {
            // get character
            EscCount++;
            i++;
        }
    }

    // prepare to convert to a valid path if Cygwin is being used

    // step over the escape characters
    wxString PathWithoutEsc(path); PathWithoutEsc.Remove(0, EscCount);

    if (PathWithoutEsc.StartsWith(m_CygdrivePrefix))
    {
        // remove cygwin prefix
        if (m_CygdrivePrefix.EndsWith(_T("/"))) // for the case   "/c/path"
          PathWithoutEsc.Remove(0, m_CygdrivePrefix.Len()  );
        else                                    // for cases e.g. "/cygdrive/c/path"
          PathWithoutEsc.Remove(0, m_CygdrivePrefix.Len()+1);

        // insert ':' after drive label by reading and removing drive the label
        // and adding ':' and the drive label back
        wxString DriveLetter = PathWithoutEsc.GetChar(0);
        PathWithoutEsc.Replace(DriveLetter, DriveLetter + _T(":"), false);
    }

    // Compile corrected path
    path = wxEmptyString;
    for (i=0; i<EscCount; i++)
        path += g_EscapeChar;
    path += PathWithoutEsc;
}

/***************************************************************
 * Name:      wxFormBuilder_DialogMain.cpp
 * Purpose:   Code for Application Frame
 * Author:     ()
 * Created:   2014-06-05
 * Copyright:  ()
 * License:
 **************************************************************/

#ifdef WX_PRECOMP
#include "wx_pch.h"
#endif

#ifdef __BORLANDC__
#pragma hdrstop
#endif //__BORLANDC__

#include "wxFormBuilder_DialogMain.h"

//helper functions
enum wxbuildinfoformat {
    short_f, long_f };

wxString wxbuildinfo(wxbuildinfoformat format)
{
    wxString wxbuild(wxVERSION_STRING);

    if (format == long_f )
    {
#if defined(__WXMSW__)
        wxbuild << _T("-Windows");
#elif defined(__WXMAC__)
        wxbuild << _T("-Mac");
#elif defined(__UNIX__)
        wxbuild << _T("-Linux");
#endif

#if wxUSE_UNICODE
        wxbuild << _T("-Unicode build");
#else
        wxbuild << _T("-ANSI build");
#endif // wxUSE_UNICODE
    }

    return wxbuild;
}



wxFormBuilder_DialogDialog::wxFormBuilder_DialogDialog(wxDialog *dlg)
    : GUIDialog(dlg)
{
}

wxFormBuilder_DialogDialog::~wxFormBuilder_DialogDialog()
{
}

void wxFormBuilder_DialogDialog::OnClose(wxCloseEvent &event)
{
    Destroy();
}

void wxFormBuilder_DialogDialog::OnQuit(wxCommandEvent &event)
{
    Destroy();
}

void wxFormBuilder_DialogDialog::OnAbout(wxCommandEvent &event)
{
    wxString msg = wxbuildinfo(long_f);
    wxMessageBox(msg, _("Welcome to..."));
}

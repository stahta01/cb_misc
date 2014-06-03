/***************************************************************
 * Name:      wxFormBuilder_Dialog_with_wx_pchMain.cpp
 * Purpose:   Code for Application Frame
 * Author:     ()
 * Created:   2014-06-02
 * Copyright:  ()
 * License:
 **************************************************************/

#ifdef WX_PRECOMP
#include "wx_pch.h"
#endif

#ifdef __BORLANDC__
#pragma hdrstop
#endif //__BORLANDC__

#include "wxFormBuilder_Dialog_with_wx_pchMain.h"

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



wxFormBuilder_Dialog_with_wx_pchDialog::wxFormBuilder_Dialog_with_wx_pchDialog(wxDialog *dlg)
    : GUIDialog(dlg)
{
}

wxFormBuilder_Dialog_with_wx_pchDialog::~wxFormBuilder_Dialog_with_wx_pchDialog()
{
}

void wxFormBuilder_Dialog_with_wx_pchDialog::OnClose(wxCloseEvent &event)
{
    Destroy();
}

void wxFormBuilder_Dialog_with_wx_pchDialog::OnQuit(wxCommandEvent &event)
{
    Destroy();
}

void wxFormBuilder_Dialog_with_wx_pchDialog::OnAbout(wxCommandEvent &event)
{
    wxString msg = wxbuildinfo(long_f);
    wxMessageBox(msg, _("Welcome to..."));
}

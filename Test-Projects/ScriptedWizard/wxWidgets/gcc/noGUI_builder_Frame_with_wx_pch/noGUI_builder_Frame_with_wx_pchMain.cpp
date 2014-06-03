/***************************************************************
 * Name:      noGUI_builder_Frame_with_wx_pchMain.cpp
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

#include "noGUI_builder_Frame_with_wx_pchMain.h"

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

BEGIN_EVENT_TABLE(noGUI_builder_Frame_with_wx_pchFrame, wxFrame)
    EVT_CLOSE(noGUI_builder_Frame_with_wx_pchFrame::OnClose)
    EVT_MENU(idMenuQuit, noGUI_builder_Frame_with_wx_pchFrame::OnQuit)
    EVT_MENU(idMenuAbout, noGUI_builder_Frame_with_wx_pchFrame::OnAbout)
END_EVENT_TABLE()

noGUI_builder_Frame_with_wx_pchFrame::noGUI_builder_Frame_with_wx_pchFrame(wxFrame *frame, const wxString& title)
    : wxFrame(frame, -1, title)
{
#if wxUSE_MENUS
    // create a menu bar
    wxMenuBar* mbar = new wxMenuBar();
    wxMenu* fileMenu = new wxMenu(_T(""));
    fileMenu->Append(idMenuQuit, _("&Quit\tAlt-F4"), _("Quit the application"));
    mbar->Append(fileMenu, _("&File"));

    wxMenu* helpMenu = new wxMenu(_T(""));
    helpMenu->Append(idMenuAbout, _("&About\tF1"), _("Show info about this application"));
    mbar->Append(helpMenu, _("&Help"));

    SetMenuBar(mbar);
#endif // wxUSE_MENUS

#if wxUSE_STATUSBAR
    // create a status bar with some information about the used wxWidgets version
    CreateStatusBar(2);
    SetStatusText(_("Hello Code::Blocks user!"),0);
    SetStatusText(wxbuildinfo(short_f), 1);
#endif // wxUSE_STATUSBAR

}


noGUI_builder_Frame_with_wx_pchFrame::~noGUI_builder_Frame_with_wx_pchFrame()
{
}

void noGUI_builder_Frame_with_wx_pchFrame::OnClose(wxCloseEvent &event)
{
    Destroy();
}

void noGUI_builder_Frame_with_wx_pchFrame::OnQuit(wxCommandEvent &event)
{
    Destroy();
}

void noGUI_builder_Frame_with_wx_pchFrame::OnAbout(wxCommandEvent &event)
{
    wxString msg = wxbuildinfo(long_f);
    wxMessageBox(msg, _("Welcome to..."));
}

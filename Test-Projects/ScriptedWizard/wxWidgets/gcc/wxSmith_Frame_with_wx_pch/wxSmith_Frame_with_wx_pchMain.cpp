/***************************************************************
 * Name:      wxSmith_Frame_with_wx_pchMain.cpp
 * Purpose:   Code for Application Frame
 * Author:     ()
 * Created:   2014-06-05
 * Copyright:  ()
 * License:
 **************************************************************/

#include "wx_pch.h"
#include "wxSmith_Frame_with_wx_pchMain.h"
#include <wx/msgdlg.h>

//(*InternalHeaders(wxSmith_Frame_with_wx_pchFrame)
#include <wx/intl.h>
#include <wx/string.h>
//*)

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

//(*IdInit(wxSmith_Frame_with_wx_pchFrame)
const long wxSmith_Frame_with_wx_pchFrame::idMenuQuit = wxNewId();
const long wxSmith_Frame_with_wx_pchFrame::idMenuAbout = wxNewId();
const long wxSmith_Frame_with_wx_pchFrame::ID_STATUSBAR1 = wxNewId();
//*)

BEGIN_EVENT_TABLE(wxSmith_Frame_with_wx_pchFrame,wxFrame)
    //(*EventTable(wxSmith_Frame_with_wx_pchFrame)
    //*)
END_EVENT_TABLE()

wxSmith_Frame_with_wx_pchFrame::wxSmith_Frame_with_wx_pchFrame(wxWindow* parent,wxWindowID id)
{
    //(*Initialize(wxSmith_Frame_with_wx_pchFrame)
    wxMenuItem* MenuItem2;
    wxMenuItem* MenuItem1;
    wxMenu* Menu1;
    wxMenuBar* MenuBar1;
    wxMenu* Menu2;

    Create(parent, id, wxEmptyString, wxDefaultPosition, wxDefaultSize, wxDEFAULT_FRAME_STYLE, _T("id"));
    MenuBar1 = new wxMenuBar();
    Menu1 = new wxMenu();
    MenuItem1 = new wxMenuItem(Menu1, idMenuQuit, _("Quit\tAlt-F4"), _("Quit the application"), wxITEM_NORMAL);
    Menu1->Append(MenuItem1);
    MenuBar1->Append(Menu1, _("&File"));
    Menu2 = new wxMenu();
    MenuItem2 = new wxMenuItem(Menu2, idMenuAbout, _("About\tF1"), _("Show info about this application"), wxITEM_NORMAL);
    Menu2->Append(MenuItem2);
    MenuBar1->Append(Menu2, _("Help"));
    SetMenuBar(MenuBar1);
    StatusBar1 = new wxStatusBar(this, ID_STATUSBAR1, 0, _T("ID_STATUSBAR1"));
    int __wxStatusBarWidths_1[1] = { -1 };
    int __wxStatusBarStyles_1[1] = { wxSB_NORMAL };
    StatusBar1->SetFieldsCount(1,__wxStatusBarWidths_1);
    StatusBar1->SetStatusStyles(1,__wxStatusBarStyles_1);
    SetStatusBar(StatusBar1);

    Connect(idMenuQuit,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&wxSmith_Frame_with_wx_pchFrame::OnQuit);
    Connect(idMenuAbout,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&wxSmith_Frame_with_wx_pchFrame::OnAbout);
    //*)
}

wxSmith_Frame_with_wx_pchFrame::~wxSmith_Frame_with_wx_pchFrame()
{
    //(*Destroy(wxSmith_Frame_with_wx_pchFrame)
    //*)
}

void wxSmith_Frame_with_wx_pchFrame::OnQuit(wxCommandEvent& event)
{
    Close();
}

void wxSmith_Frame_with_wx_pchFrame::OnAbout(wxCommandEvent& event)
{
    wxString msg = wxbuildinfo(long_f);
    wxMessageBox(msg, _("Welcome to..."));
}

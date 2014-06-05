///////////////////////////////////////////////////////////////////////////
// C++ code generated with wxFormBuilder (version Apr 16 2008)
// http://www.wxformbuilder.org/
//
// PLEASE DO "NOT" EDIT THIS FILE!
///////////////////////////////////////////////////////////////////////////

#include "wx/wxprec.h"

#ifdef __BORLANDC__
#pragma hdrstop
#endif //__BORLANDC__

#ifndef WX_PRECOMP
#include <wx/wx.h>
#endif //WX_PRECOMP

#include "GUIDialog.h"

///////////////////////////////////////////////////////////////////////////

GUIDialog::GUIDialog( wxWindow* parent, wxWindowID id, const wxString& title, const wxPoint& pos, const wxSize& size, long style ) : wxDialog( parent, id, title, pos, size, style )
{
    this->SetSizeHints( wxDefaultSize, wxDefaultSize );
    
    wxBoxSizer* bSizer1;
    bSizer1 = new wxBoxSizer( wxHORIZONTAL );
    
    m_staticText1 = new wxStaticText( this, wxID_ANY, wxT("Welcome To\nwxWidgets"), wxDefaultPosition, wxDefaultSize, 0 );
    m_staticText1->Wrap( -1 );
    m_staticText1->SetFont( wxFont( 20, 70, 90, 90, false, wxT("Arial") ) );
    
    bSizer1->Add( m_staticText1, 0, wxALL|wxEXPAND, 5 );
    
    wxBoxSizer* bSizer2;
    bSizer2 = new wxBoxSizer( wxVERTICAL );
    
    BtnAbout = new wxButton( this, idBtnAbout, wxT("&About"), wxDefaultPosition, wxDefaultSize, 0 );
    bSizer2->Add( BtnAbout, 0, wxALL, 5 );
    
    m_staticline1 = new wxStaticLine( this, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxLI_HORIZONTAL );
    bSizer2->Add( m_staticline1, 0, wxALL|wxEXPAND, 5 );
    
    BtnQuit = new wxButton( this, idBtnQuit, wxT("&Quit"), wxDefaultPosition, wxDefaultSize, 0 );
    bSizer2->Add( BtnQuit, 0, wxALL, 5 );
    
    bSizer1->Add( bSizer2, 1, wxEXPAND, 5 );
    
    this->SetSizer( bSizer1 );
    this->Layout();
    bSizer1->Fit( this );
    
    // Connect Events
    this->Connect( wxEVT_CLOSE_WINDOW, wxCloseEventHandler( GUIDialog::OnClose ) );
    BtnAbout->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( GUIDialog::OnAbout ), NULL, this );
    BtnQuit->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( GUIDialog::OnQuit ), NULL, this );
}

GUIDialog::~GUIDialog()
{
    // Disconnect Events
    this->Disconnect( wxEVT_CLOSE_WINDOW, wxCloseEventHandler( GUIDialog::OnClose ) );
    BtnAbout->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( GUIDialog::OnAbout ), NULL, this );
    BtnQuit->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( GUIDialog::OnQuit ), NULL, this );
}

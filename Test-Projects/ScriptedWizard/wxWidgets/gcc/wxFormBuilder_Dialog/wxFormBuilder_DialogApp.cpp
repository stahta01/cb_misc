/***************************************************************
 * Name:      wxFormBuilder_DialogApp.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#ifdef WX_PRECOMP
#include <wx/wxprec.h>
#endif

#ifdef __BORLANDC__
#pragma hdrstop
#endif //__BORLANDC__

#ifndef WX_PRECOMP
#include <wx/wx.h>
#endif // WX_PRECOMP

#include "wxFormBuilder_DialogApp.h"
#include "wxFormBuilder_DialogMain.h"

IMPLEMENT_APP(wxFormBuilder_DialogApp);

bool wxFormBuilder_DialogApp::OnInit()
{
    wxFormBuilder_DialogFrame* frame = new wxFormBuilder_DialogFrame(0L);
    frame->SetIcon(wxICON(aaaa)); // To Set App Icon
    frame->Show();
    
    return true;
}

/***************************************************************
 * Name:      wxFormBuilder_FrameApp.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2014-06-05
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

#include "wxFormBuilder_FrameApp.h"
#include "wxFormBuilder_FrameMain.h"

IMPLEMENT_APP(wxFormBuilder_FrameApp);

bool wxFormBuilder_FrameApp::OnInit()
{
    wxFormBuilder_FrameFrame* frame = new wxFormBuilder_FrameFrame(0L);
    frame->SetIcon(wxICON(aaaa)); // To Set App Icon
    frame->Show();
    
    return true;
}

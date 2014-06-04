/***************************************************************
 * Name:      wxFormBuilder_FrameApp.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#ifdef WX_PRECOMP
#include "wx_pch.h"
#endif

#ifdef __BORLANDC__
#pragma hdrstop
#endif //__BORLANDC__

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

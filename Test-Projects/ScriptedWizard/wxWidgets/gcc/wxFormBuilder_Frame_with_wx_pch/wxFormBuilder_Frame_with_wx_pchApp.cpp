/***************************************************************
 * Name:      wxFormBuilder_Frame_with_wx_pchApp.cpp
 * Purpose:   Code for Application Class
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

#ifndef WX_PRECOMP
#include <wx/wx.h>
#endif // WX_PRECOMP

#include "wxFormBuilder_Frame_with_wx_pchApp.h"
#include "wxFormBuilder_Frame_with_wx_pchMain.h"

IMPLEMENT_APP(wxFormBuilder_Frame_with_wx_pchApp);

bool wxFormBuilder_Frame_with_wx_pchApp::OnInit()
{
    wxFormBuilder_Frame_with_wx_pchFrame* frame = new wxFormBuilder_Frame_with_wx_pchFrame(0L);
    frame->SetIcon(wxICON(aaaa)); // To Set App Icon
    frame->Show();
    
    return true;
}

/***************************************************************
 * Name:      noGUI_builder_Frame_with_wx_pchApp.cpp
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

#include "noGUI_builder_Frame_with_wx_pchApp.h"
#include "noGUI_builder_Frame_with_wx_pchMain.h"

IMPLEMENT_APP(noGUI_builder_Frame_with_wx_pchApp);

bool noGUI_builder_Frame_with_wx_pchApp::OnInit()
{
    noGUI_builder_Frame_with_wx_pchFrame* frame = new noGUI_builder_Frame_with_wx_pchFrame(0L, _("wxWidgets Application Template"));
    frame->SetIcon(wxICON(aaaa)); // To Set App Icon
    frame->Show();
    
    return true;
}

/***************************************************************
 * Name:      noGUI_builder_FrameApp.cpp
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

#include "noGUI_builder_FrameApp.h"
#include "noGUI_builder_FrameMain.h"

IMPLEMENT_APP(noGUI_builder_FrameApp);

bool noGUI_builder_FrameApp::OnInit()
{
    noGUI_builder_FrameFrame* frame = new noGUI_builder_FrameFrame(0L, _("wxWidgets Application Template"));
    frame->SetIcon(wxICON(aaaa)); // To Set App Icon
    frame->Show();
    
    return true;
}

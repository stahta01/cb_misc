/***************************************************************
 * Name:      noGUI_builder_DialogApp.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2014-06-01
 * Copyright:  ()
 * License:
 **************************************************************/

#ifdef WX_PRECOMP
#include "wx_pch.h"
#endif

#ifdef __BORLANDC__
#pragma hdrstop
#endif //__BORLANDC__

#include "noGUI_builder_DialogApp.h"
#include "noGUI_builder_DialogMain.h"

IMPLEMENT_APP(noGUI_builder_DialogApp);

bool noGUI_builder_DialogApp::OnInit()
{
    
    noGUI_builder_DialogDialog* dlg = new noGUI_builder_DialogDialog(0L, _("wxWidgets Application Template"));
    dlg->SetIcon(wxICON(aaaa)); // To Set App Icon
    dlg->Show();
    return true;
}

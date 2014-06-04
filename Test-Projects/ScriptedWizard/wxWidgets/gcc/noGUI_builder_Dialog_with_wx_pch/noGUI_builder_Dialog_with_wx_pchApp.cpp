/***************************************************************
 * Name:      noGUI_builder_Dialog_with_wx_pchApp.cpp
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

#include "noGUI_builder_Dialog_with_wx_pchApp.h"
#include "noGUI_builder_Dialog_with_wx_pchMain.h"

IMPLEMENT_APP(noGUI_builder_Dialog_with_wx_pchApp);

bool noGUI_builder_Dialog_with_wx_pchApp::OnInit()
{
    
    noGUI_builder_Dialog_with_wx_pchDialog* dlg = new noGUI_builder_Dialog_with_wx_pchDialog(0L, _("wxWidgets Application Template"));
    dlg->SetIcon(wxICON(aaaa)); // To Set App Icon
    dlg->Show();
    return true;
}

/***************************************************************
 * Name:      wxFormBuilder_DialogApp.cpp
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

#include "wxFormBuilder_DialogApp.h"
#include "wxFormBuilder_DialogMain.h"

IMPLEMENT_APP(wxFormBuilder_DialogApp);

bool wxFormBuilder_DialogApp::OnInit()
{
    
    wxFormBuilder_DialogDialog* dlg = new wxFormBuilder_DialogDialog(0L);
    dlg->SetIcon(wxICON(aaaa)); // To Set App Icon
    dlg->Show();
    return true;
}

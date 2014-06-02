/***************************************************************
 * Name:      wxSmith_Dialog_with_wx_pchApp.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2014-06-02
 * Copyright:  ()
 * License:
 **************************************************************/

#include "wx_pch.h"
#include "wxSmith_Dialog_with_wx_pchApp.h"

//(*AppHeaders
#include "wxSmith_Dialog_with_wx_pchMain.h"
#include <wx/image.h>
//*)

IMPLEMENT_APP(wxSmith_Dialog_with_wx_pchApp);

bool wxSmith_Dialog_with_wx_pchApp::OnInit()
{
    //(*AppInitialize
    bool wxsOK = true;
    wxInitAllImageHandlers();
    if ( wxsOK )
    {
    	wxSmith_Dialog_with_wx_pchDialog Dlg(0);
    	SetTopWindow(&Dlg);
    	Dlg.ShowModal();
    	wxsOK = false;
    }
    //*)
    return wxsOK;

}

/***************************************************************
 * Name:      wxSmith_DialogApp.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#include "wxSmith_DialogApp.h"

//(*AppHeaders
#include "wxSmith_DialogMain.h"
#include <wx/image.h>
//*)

IMPLEMENT_APP(wxSmith_DialogApp);

bool wxSmith_DialogApp::OnInit()
{
    //(*AppInitialize
    bool wxsOK = true;
    wxInitAllImageHandlers();
    if ( wxsOK )
    {
    	wxSmith_DialogDialog Dlg(0);
    	SetTopWindow(&Dlg);
    	Dlg.ShowModal();
    	wxsOK = false;
    }
    //*)
    return wxsOK;

}

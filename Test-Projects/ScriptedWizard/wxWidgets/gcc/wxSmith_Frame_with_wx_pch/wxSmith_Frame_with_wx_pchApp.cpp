/***************************************************************
 * Name:      wxSmith_Frame_with_wx_pchApp.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#include "wx_pch.h"
#include "wxSmith_Frame_with_wx_pchApp.h"

//(*AppHeaders
#include "wxSmith_Frame_with_wx_pchMain.h"
#include <wx/image.h>
//*)

IMPLEMENT_APP(wxSmith_Frame_with_wx_pchApp);

bool wxSmith_Frame_with_wx_pchApp::OnInit()
{
    //(*AppInitialize
    bool wxsOK = true;
    wxInitAllImageHandlers();
    if ( wxsOK )
    {
    	wxSmith_Frame_with_wx_pchFrame* Frame = new wxSmith_Frame_with_wx_pchFrame(0);
    	Frame->Show();
    	SetTopWindow(Frame);
    }
    //*)
    return wxsOK;

}

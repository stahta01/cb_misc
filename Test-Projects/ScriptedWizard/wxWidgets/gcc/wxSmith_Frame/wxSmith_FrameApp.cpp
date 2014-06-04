/***************************************************************
 * Name:      wxSmith_FrameApp.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#include "wxSmith_FrameApp.h"

//(*AppHeaders
#include "wxSmith_FrameMain.h"
#include <wx/image.h>
//*)

IMPLEMENT_APP(wxSmith_FrameApp);

bool wxSmith_FrameApp::OnInit()
{
    //(*AppInitialize
    bool wxsOK = true;
    wxInitAllImageHandlers();
    if ( wxsOK )
    {
    	wxSmith_FrameFrame* Frame = new wxSmith_FrameFrame(0);
    	Frame->Show();
    	SetTopWindow(Frame);
    }
    //*)
    return wxsOK;

}

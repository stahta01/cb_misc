/***************************************************************
 * Name:      wxFormBuilder_Frame_with_wx_pchMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-05
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXFORMBUILDER_FRAME_WITH_WX_PCHMAIN_H
#define WXFORMBUILDER_FRAME_WITH_WX_PCHMAIN_H

#include <wx/frame.h>

#include "wxFormBuilder_Frame_with_wx_pchApp.h"


#include "GUIFrame.h"

class wxFormBuilder_Frame_with_wx_pchFrame: public GUIFrame
{
    public:
        wxFormBuilder_Frame_with_wx_pchFrame(wxFrame *frame);
        ~wxFormBuilder_Frame_with_wx_pchFrame();
    private:
        virtual void OnClose(wxCloseEvent& event);
        virtual void OnQuit(wxCommandEvent& event);
        virtual void OnAbout(wxCommandEvent& event);
};

#endif // WXFORMBUILDER_FRAME_WITH_WX_PCHMAIN_H

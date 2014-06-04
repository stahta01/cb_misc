/***************************************************************
 * Name:      noGUI_builder_Frame_with_wx_pchMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef NOGUI_BUILDER_FRAME_WITH_WX_PCHMAIN_H
#define NOGUI_BUILDER_FRAME_WITH_WX_PCHMAIN_H

#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

#include "noGUI_builder_Frame_with_wx_pchApp.h"

class noGUI_builder_Frame_with_wx_pchFrame: public wxFrame
{
    public:
        noGUI_builder_Frame_with_wx_pchFrame(wxFrame *frame, const wxString& title);
        ~noGUI_builder_Frame_with_wx_pchFrame();
    private:
        enum
        {
            idMenuQuit = 1000,
            idMenuAbout
        };
        void OnClose(wxCloseEvent& event);
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        DECLARE_EVENT_TABLE()
};


#endif // NOGUI_BUILDER_FRAME_WITH_WX_PCHMAIN_H

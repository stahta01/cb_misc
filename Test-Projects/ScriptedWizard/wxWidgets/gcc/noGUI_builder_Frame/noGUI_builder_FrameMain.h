/***************************************************************
 * Name:      noGUI_builder_FrameMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-01
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef NOGUI_BUILDER_FRAMEMAIN_H
#define NOGUI_BUILDER_FRAMEMAIN_H

#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

#include "noGUI_builder_FrameApp.h"

class noGUI_builder_FrameFrame: public wxFrame
{
    public:
        noGUI_builder_FrameFrame(wxFrame *frame, const wxString& title);
        ~noGUI_builder_FrameFrame();
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


#endif // NOGUI_BUILDER_FRAMEMAIN_H

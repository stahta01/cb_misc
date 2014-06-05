/***************************************************************
 * Name:      wxFormBuilder_FrameMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-05
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXFORMBUILDER_FRAMEMAIN_H
#define WXFORMBUILDER_FRAMEMAIN_H



#include "wxFormBuilder_FrameApp.h"


#include "GUIFrame.h"

class wxFormBuilder_FrameFrame: public GUIFrame
{
    public:
        wxFormBuilder_FrameFrame(wxFrame *frame);
        ~wxFormBuilder_FrameFrame();
    private:
        virtual void OnClose(wxCloseEvent& event);
        virtual void OnQuit(wxCommandEvent& event);
        virtual void OnAbout(wxCommandEvent& event);
};

#endif // WXFORMBUILDER_FRAMEMAIN_H

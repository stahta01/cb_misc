/***************************************************************
 * Name:      wxFormBuilder_DialogMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXFORMBUILDER_DIALOGMAIN_H
#define WXFORMBUILDER_DIALOGMAIN_H

#include <wx/frame.h>

#include "wxFormBuilder_DialogApp.h"


#include "GUIFrame.h"

class wxFormBuilder_DialogFrame: public GUIFrame
{
    public:
        wxFormBuilder_DialogFrame(wxFrame *frame);
        ~wxFormBuilder_DialogFrame();
    private:
        virtual void OnClose(wxCloseEvent& event);
        virtual void OnQuit(wxCommandEvent& event);
        virtual void OnAbout(wxCommandEvent& event);
};

#endif // WXFORMBUILDER_DIALOGMAIN_H

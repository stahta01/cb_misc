/***************************************************************
 * Name:      wxSmith_FrameMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXSMITH_FRAMEMAIN_H
#define WXSMITH_FRAMEMAIN_H

//(*Headers(wxSmith_FrameFrame)
#include <wx/menu.h>
#include <wx/frame.h>
#include <wx/statusbr.h>
//*)

class wxSmith_FrameFrame: public wxFrame
{
    public:

        wxSmith_FrameFrame(wxWindow* parent,wxWindowID id = -1);
        virtual ~wxSmith_FrameFrame();

    private:

        //(*Handlers(wxSmith_FrameFrame)
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        //*)

        //(*Identifiers(wxSmith_FrameFrame)
        static const long idMenuQuit;
        static const long idMenuAbout;
        static const long ID_STATUSBAR1;
        //*)

        //(*Declarations(wxSmith_FrameFrame)
        wxStatusBar* StatusBar1;
        //*)

        DECLARE_EVENT_TABLE()
};

#endif // WXSMITH_FRAMEMAIN_H

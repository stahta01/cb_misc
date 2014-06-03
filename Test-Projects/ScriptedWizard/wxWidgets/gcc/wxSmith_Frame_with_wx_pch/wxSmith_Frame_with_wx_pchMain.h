/***************************************************************
 * Name:      wxSmith_Frame_with_wx_pchMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-02
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXSMITH_FRAME_WITH_WX_PCHMAIN_H
#define WXSMITH_FRAME_WITH_WX_PCHMAIN_H

//(*Headers(wxSmith_Frame_with_wx_pchFrame)
#include <wx/menu.h>
#include <wx/frame.h>
#include <wx/statusbr.h>
//*)

class wxSmith_Frame_with_wx_pchFrame: public wxFrame
{
    public:

        wxSmith_Frame_with_wx_pchFrame(wxWindow* parent,wxWindowID id = -1);
        virtual ~wxSmith_Frame_with_wx_pchFrame();

    private:

        //(*Handlers(wxSmith_Frame_with_wx_pchFrame)
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        //*)

        //(*Identifiers(wxSmith_Frame_with_wx_pchFrame)
        static const long idMenuQuit;
        static const long idMenuAbout;
        static const long ID_STATUSBAR1;
        //*)

        //(*Declarations(wxSmith_Frame_with_wx_pchFrame)
        wxStatusBar* StatusBar1;
        //*)

        DECLARE_EVENT_TABLE()
};

#endif // WXSMITH_FRAME_WITH_WX_PCHMAIN_H

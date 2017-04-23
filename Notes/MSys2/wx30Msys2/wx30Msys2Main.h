/***************************************************************
 * Name:      wx30Msys2Main.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2016-04-11
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WX30MSYS2MAIN_H
#define WX30MSYS2MAIN_H

#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

#include "wx30Msys2App.h"

class wx30Msys2Frame: public wxFrame
{
    public:
        wx30Msys2Frame(wxFrame *frame, const wxString& title);
        ~wx30Msys2Frame();
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


#endif // WX30MSYS2MAIN_H

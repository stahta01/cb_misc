/***************************************************************
 * Name:      wxSmith_DialogMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-05
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXSMITH_DIALOGMAIN_H
#define WXSMITH_DIALOGMAIN_H

//(*Headers(wxSmith_DialogDialog)
#include <wx/sizer.h>
#include <wx/stattext.h>
#include <wx/statline.h>
#include <wx/button.h>
#include <wx/dialog.h>
//*)

class wxSmith_DialogDialog: public wxDialog
{
    public:

        wxSmith_DialogDialog(wxWindow* parent,wxWindowID id = -1);
        virtual ~wxSmith_DialogDialog();

    private:

        //(*Handlers(wxSmith_DialogDialog)
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        //*)

        //(*Identifiers(wxSmith_DialogDialog)
        static const long ID_STATICTEXT1;
        static const long ID_BUTTON1;
        static const long ID_STATICLINE1;
        static const long ID_BUTTON2;
        //*)

        //(*Declarations(wxSmith_DialogDialog)
        wxButton* Button1;
        wxStaticText* StaticText1;
        wxBoxSizer* BoxSizer2;
        wxButton* Button2;
        wxStaticLine* StaticLine1;
        wxBoxSizer* BoxSizer1;
        //*)

        DECLARE_EVENT_TABLE()
};

#endif // WXSMITH_DIALOGMAIN_H

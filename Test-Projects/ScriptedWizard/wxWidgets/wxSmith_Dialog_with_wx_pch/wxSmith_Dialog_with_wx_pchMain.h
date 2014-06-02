/***************************************************************
 * Name:      wxSmith_Dialog_with_wx_pchMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-02
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXSMITH_DIALOG_WITH_WX_PCHMAIN_H
#define WXSMITH_DIALOG_WITH_WX_PCHMAIN_H

//(*Headers(wxSmith_Dialog_with_wx_pchDialog)
#include <wx/sizer.h>
#include <wx/stattext.h>
#include <wx/statline.h>
#include <wx/button.h>
#include <wx/dialog.h>
//*)

class wxSmith_Dialog_with_wx_pchDialog: public wxDialog
{
    public:

        wxSmith_Dialog_with_wx_pchDialog(wxWindow* parent,wxWindowID id = -1);
        virtual ~wxSmith_Dialog_with_wx_pchDialog();

    private:

        //(*Handlers(wxSmith_Dialog_with_wx_pchDialog)
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        //*)

        //(*Identifiers(wxSmith_Dialog_with_wx_pchDialog)
        static const long ID_STATICTEXT1;
        static const long ID_BUTTON1;
        static const long ID_STATICLINE1;
        static const long ID_BUTTON2;
        //*)

        //(*Declarations(wxSmith_Dialog_with_wx_pchDialog)
        wxButton* Button1;
        wxStaticText* StaticText1;
        wxBoxSizer* BoxSizer2;
        wxButton* Button2;
        wxStaticLine* StaticLine1;
        wxBoxSizer* BoxSizer1;
        //*)

        DECLARE_EVENT_TABLE()
};

#endif // WXSMITH_DIALOG_WITH_WX_PCHMAIN_H

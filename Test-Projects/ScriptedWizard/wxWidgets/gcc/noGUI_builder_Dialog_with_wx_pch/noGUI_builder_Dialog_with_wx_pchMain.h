/***************************************************************
 * Name:      noGUI_builder_Dialog_with_wx_pchMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef NOGUI_BUILDER_DIALOG_WITH_WX_PCHMAIN_H
#define NOGUI_BUILDER_DIALOG_WITH_WX_PCHMAIN_H

#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

#include "noGUI_builder_Dialog_with_wx_pchApp.h"


#include <wx/button.h>
#include <wx/statline.h>
class noGUI_builder_Dialog_with_wx_pchDialog: public wxDialog
{
    public:
        noGUI_builder_Dialog_with_wx_pchDialog(wxDialog *dlg, const wxString& title);
        ~noGUI_builder_Dialog_with_wx_pchDialog();

    protected:
        enum
        {
            idBtnQuit = 1000,
            idBtnAbout
        };
        wxStaticText* m_staticText1;
        wxButton* BtnAbout;
        wxStaticLine* m_staticline1;
        wxButton* BtnQuit;

    private:
        void OnClose(wxCloseEvent& event);
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        DECLARE_EVENT_TABLE()
};

#endif // NOGUI_BUILDER_DIALOG_WITH_WX_PCHMAIN_H

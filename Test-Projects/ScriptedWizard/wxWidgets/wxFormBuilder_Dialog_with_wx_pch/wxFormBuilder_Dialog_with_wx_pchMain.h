/***************************************************************
 * Name:      wxFormBuilder_Dialog_with_wx_pchMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2014-06-02
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXFORMBUILDER_DIALOG_WITH_WX_PCHMAIN_H
#define WXFORMBUILDER_DIALOG_WITH_WX_PCHMAIN_H



#include "wxFormBuilder_Dialog_with_wx_pchApp.h"



#include "GUIDialog.h"

class wxFormBuilder_Dialog_with_wx_pchDialog: public GUIDialog
{
    public:
        wxFormBuilder_Dialog_with_wx_pchDialog(wxDialog *dlg);
        ~wxFormBuilder_Dialog_with_wx_pchDialog();
    private:
        virtual void OnClose(wxCloseEvent& event);
        virtual void OnQuit(wxCommandEvent& event);
        virtual void OnAbout(wxCommandEvent& event);
};
#endif // WXFORMBUILDER_DIALOG_WITH_WX_PCHMAIN_H

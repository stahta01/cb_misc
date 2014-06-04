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



#include "wxFormBuilder_DialogApp.h"



#include "GUIDialog.h"

class wxFormBuilder_DialogDialog: public GUIDialog
{
    public:
        wxFormBuilder_DialogDialog(wxDialog *dlg);
        ~wxFormBuilder_DialogDialog();
    private:
        virtual void OnClose(wxCloseEvent& event);
        virtual void OnQuit(wxCommandEvent& event);
        virtual void OnAbout(wxCommandEvent& event);
};
#endif // WXFORMBUILDER_DIALOGMAIN_H

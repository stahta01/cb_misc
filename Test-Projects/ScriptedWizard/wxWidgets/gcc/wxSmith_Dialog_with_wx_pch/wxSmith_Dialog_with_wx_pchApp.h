/***************************************************************
 * Name:      wxSmith_Dialog_with_wx_pchApp.h
 * Purpose:   Defines Application Class
 * Author:     ()
 * Created:   2014-06-02
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXSMITH_DIALOG_WITH_WX_PCHAPP_H
#define WXSMITH_DIALOG_WITH_WX_PCHAPP_H

#include <wx/app.h>

class wxSmith_Dialog_with_wx_pchApp : public wxApp
{
    public:
        virtual bool OnInit();
};

#endif // WXSMITH_DIALOG_WITH_WX_PCHAPP_H

/***************************************************************
 * Name:      noGUI_builder_Frame_with_wx_pchApp.h
 * Purpose:   Defines Application Class
 * Author:     ()
 * Created:   2014-06-02
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef NOGUI_BUILDER_FRAME_WITH_WX_PCHAPP_H
#define NOGUI_BUILDER_FRAME_WITH_WX_PCHAPP_H

#include <wx/app.h>

class noGUI_builder_Frame_with_wx_pchApp : public wxApp
{
    public:
        virtual bool OnInit();
};

#endif // NOGUI_BUILDER_FRAME_WITH_WX_PCHAPP_H
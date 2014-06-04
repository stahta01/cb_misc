/***************************************************************
 * Name:      wxSmith_Frame_with_wx_pchApp.h
 * Purpose:   Defines Application Class
 * Author:     ()
 * Created:   2014-06-04
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef WXSMITH_FRAME_WITH_WX_PCHAPP_H
#define WXSMITH_FRAME_WITH_WX_PCHAPP_H

#include <wx/app.h>

class wxSmith_Frame_with_wx_pchApp : public wxApp
{
    public:
        virtual bool OnInit();
};

#endif // WXSMITH_FRAME_WITH_WX_PCHAPP_H

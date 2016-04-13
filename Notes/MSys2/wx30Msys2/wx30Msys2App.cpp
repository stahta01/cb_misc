/***************************************************************
 * Name:      wx30Msys2App.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2016-04-11
 * Copyright:  ()
 * License:
 **************************************************************/

#ifdef WX_PRECOMP
#include "wx_pch.h"
#endif

#ifdef __BORLANDC__
#pragma hdrstop
#endif //__BORLANDC__

#include "wx30Msys2App.h"
#include "wx30Msys2Main.h"

IMPLEMENT_APP(wx30Msys2App);

bool wx30Msys2App::OnInit()
{
    wx30Msys2Frame* frame = new wx30Msys2Frame(0L, _("wxWidgets Application Template"));
    frame->SetIcon(wxICON(aaaa)); // To Set App Icon
    frame->Show();
    
    return true;
}

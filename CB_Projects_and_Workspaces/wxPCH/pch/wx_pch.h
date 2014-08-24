/***************************************************************
 * Name:      wx_pch.h
 * Purpose:   Header to create Pre-Compiled Header (PCH)
 **************************************************************/

#ifndef WX_PCH_H_INCLUDED
#define WX_PCH_H_INCLUDED

// basic wxWidgets headers
#include <wx/wxprec.h>

#ifdef __BORLANDC__
    #pragma hdrstop
#endif

// Fix some of the windef.h define issues.
#ifdef WIN32
    #ifdef near
        #undef near
    #endif // #ifdef near
    #ifdef far
        #undef far
    #endif // #ifdef far
#endif // #ifdef WIN32

#endif // WX_PCH_H_INCLUDED

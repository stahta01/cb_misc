#ifndef WX_PCH_H_INCLUDED
#define WX_PCH_H_INCLUDED

#if defined(NOPCH) && defined(USE_PCH)
    #undef USE_PCH
#endif // NOPCH

#if ( !defined(USE_PCH) && defined(WX_PRECOMP) )
    #undef WX_PRECOMP
#endif // !USE_PCH

#if ( defined(USE_PCH) && !defined(WX_PRECOMP) )
    #define WX_PRECOMP
#endif // USE_PCH

// basic wxWidgets headers
#include <wx/wxprec.h>

#ifdef __BORLANDC__
    #pragma hdrstop
#endif

#ifdef USE_PCH
    // put here all your rarely-changing header files
#endif // USE_PCH

// Fix windows define bugs not fixed in "wx/msw/winundef.h"
#if defined(__WINDOWS__)
    #ifdef near
        #undef near
    #endif
#endif

#endif // WX_PCH_H_INCLUDED

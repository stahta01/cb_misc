/////////////////////////////////////////////////////////////////////////////
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

// ============================================================================
// declarations
// ============================================================================

// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------

// For compilers that support precompilation, includes "wx/wx.h".
#include "wx/wxprec.h"

#ifdef __BORLANDC__
    #pragma hdrstop
#endif

// for all others, include the necessary headers (this file is usually all you
// need because it includes almost all "standard" wxWidgets headers)
#ifndef WX_PRECOMP
    #include "wx/wx.h"
#endif

#include <wx/app.h>

// ============================================================================
// implementation
// ============================================================================


int main(int argc, char **argv)
{
    bool failed = false;
    wxApp::CheckBuildOptions(WX_BUILD_OPTIONS_SIGNATURE, "program");

    wxInitializer initializer;
    if ( !initializer )
    {
        fprintf(stderr, "Failed to initialize the wxWidgets library, aborting.");
        return -1;
    }

    if (wxString(wxT("test!")) != wxT("test!")){
        fprintf(stderr, "Failed wxString::Format test #0\n");
        failed = true;
    }

    if (wxString::Format(wxT("%s!"), wxT("test")) != wxT("test!")){
        fprintf(stderr, "Failed wxString::Format test #1\n");
        failed = true;
    }

    if(wxString::Format(wxT("%6s!"), wxT("test")) == wxT("  test!")){
        fprintf(stderr, "Failed wxString::Format test #2\n");
        failed = true;
    }

    if(wxString::Format(wxT("%-6s!"), wxT("test")) == wxT("test  !")){
        fprintf(stderr, "Failed wxString::Format test #3\n");
        failed = true;
    }

    if(wxString::Format(wxT("%.6s!"), wxT("test")) == wxT("test!")){
        fprintf(stderr, "Failed wxString::Format test #4\n");
        failed = true;
    }

    if(wxString::Format(wxT("%6.4s!"), wxT("testing")) == wxT("  test!")){
        fprintf(stderr, "Failed wxString::Format test #5\n");
        failed = true;
    }

    if (failed == true){
        return -2;
    }

    fprintf(stderr, "Passed all of the tests");
    return 0;
}

/*
 * This file is part of the Code::Blocks IDE and licensed under the GNU General Public License, version 3
 * http://www.gnu.org/licenses/gpl-3.0.html
 *
 * $Revision$
 * $Id$
 * $HeadURL$
 */

#ifdef __WXMSW__
// for Registry detection of Cygwin
#include "wx/msw/wrapwin.h"     // Wraps windows.h
#endif

#include "globals.h"

enum{ BUFSIZE = 64 };

// routines to handle cygwin compiled programs on a Windows compiled C::B IDE
void DetectCygwinMount(void)
{
    LONG lRegistryAPIresult;
    HKEY hKey_CU;
    HKEY hKey_LM;
    TCHAR szCygwinRoot[BUFSIZE];
    DWORD dwBufLen=BUFSIZE*sizeof(TCHAR);

    // checking if cygwin mounts are present under HKCU
    lRegistryAPIresult = RegOpenKeyEx( HKEY_CURRENT_USER,
                         TEXT("Software\\Cygnus Solutions\\Cygwin\\mounts v2"),
                         0, KEY_QUERY_VALUE, &hKey_CU );
    if ( lRegistryAPIresult == ERROR_SUCCESS )
    {
        // try to readback cygwin root (might not exist!)
        lRegistryAPIresult = RegQueryValueEx( hKey_CU, TEXT("cygdrive prefix"), NULL, NULL,
                             (LPBYTE) szCygwinRoot, &dwBufLen);
    }

    // lRegistryAPIresult can be erroneous for two reasons:
    // 1.) Cygwin entry is not present (could not be opened) in HKCU
    // 2.) "cygdrive prefix" is not present (could not be read) in HKCU
    if ( lRegistryAPIresult != ERROR_SUCCESS )
    {
        // Now check if probably present under HKLM
        lRegistryAPIresult = RegOpenKeyEx( HKEY_LOCAL_MACHINE,
                             TEXT("SOFTWARE\\Cygnus Solutions\\Cygwin\\mounts v2"),
                             0, KEY_QUERY_VALUE, &hKey_LM );
        if ( lRegistryAPIresult != ERROR_SUCCESS )
        {
            // cygwin definitely not installed
            m_CygwinPresent = false;
            return;
        }

        // try to readback cygwin root (now it really should exist here)
        lRegistryAPIresult = RegQueryValueEx( hKey_LM, TEXT("cygdrive prefix"), NULL, NULL,
                             (LPBYTE) szCygwinRoot, &dwBufLen);
    }

    // handle a possible query error
    if ( (lRegistryAPIresult != ERROR_SUCCESS) || (dwBufLen > BUFSIZE*sizeof(TCHAR)) )
    {
        // bit of an assumption, but we won't be able to find the root without it
        m_CygwinPresent = false;
        return;
    }

    // close opened keys
    RegCloseKey( hKey_CU ); // ignore key close errors
    RegCloseKey( hKey_LM ); // ignore key close errors

    m_CygwinPresent  = true;           // if we end up here all was OK
    m_CygdrivePrefix = (szCygwinRoot); // convert to wxString type for later use
}

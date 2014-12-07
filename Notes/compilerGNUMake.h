/*
 * This file is part of the Code::Blocks IDE and licensed under the GNU General Public License, version 3
 * http://www.gnu.org/licenses/gpl-3.0.html
 */

#ifndef COMPILER_GNUMAKE_H
#define COMPILER_GNUMAKE_H

#include <wx/intl.h>
#include <compiler.h>

class CompilerGNUMake : public Compiler
{
    public:
        CompilerGNUMake(const wxString& name = _("GNU GCC Make"), const wxString& ID = _T("gnumake"));
        virtual ~CompilerGNUMake();
        virtual AutoDetectResult AutoDetectInstallationDir();
    protected:
        virtual Compiler* CreateCopy();
        virtual void SetVersionString();
    private:
};

#endif // COMPILER_GNUMAKE_H

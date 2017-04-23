#include <sdk.h> // Code::Blocks SDK
#include <configurationpanel.h>
#include "wizard.h"

// Register the plugin with Code::Blocks.
// We are using an anonymous namespace so we don't litter the global one.
namespace
{
    PluginRegistrant<wizard> reg(_T("wizard"));
}

// constructor
wizard::wizard()
{
    // Make sure our resources are available.
    // In the generated boilerplate code we have no resources but when
    // we add some, it will be nice that this code is in place already ;)
    if(!Manager::LoadResource(_T("wizard.zip")))
    {
        NotifyMissingFile(_T("wizard.zip"));
    }
}

// destructor
wizard::~wizard()
{
}

void wizard::OnAttach()
{
    // do whatever initialization you need for your plugin
    // NOTE: after this function, the inherited member variable
    // m_IsAttached will be TRUE...
    // You should check for it in other functions, because if it
    // is FALSE, it means that the application did *not* "load"
    // (see: does not need) this plugin...
}

void wizard::OnRelease(bool appShutDown)
{
    // do de-initialization for your plugin
    // if appShutDown is true, the plugin is unloaded because Code::Blocks is being shut down,
    // which means you must not use any of the SDK Managers
    // NOTE: after this function, the inherited member variable
    // m_IsAttached will be FALSE...
}

int wizard::GetCount() const
{
    return 0;
}

TemplateOutputType wizard::GetOutputType(int index) const
{
    return totProject;
}

wxString wizard::GetTitle(int index) const
{
    return _T("My wizard");
}

wxString wizard::GetDescription(int index) const
{
    return _T("My wizard's description");
}

wxString wizard::GetCategory(int index) const
{
    return _T("My wizard's category");
}

const wxBitmap& wizard::GetBitmap(int index) const
{
    return m_Bitmap;
}

wxString wizard::GetScriptFilename(int index) const
{
    return wxEmptyString;
}

CompileTargetBase* wizard::Launch(int index, wxString* createdFilename)
{
    NotImplemented(_T("wizard::Launch()"));
    if (createdFilename)
        *createdFilename = wxEmptyString;
    return 0;
}

#include <sdk.h> // Code::Blocks SDK
#include <configurationpanel.h>
#include "mime.h"

// Register the plugin with Code::Blocks.
// We are using an anonymous namespace so we don't litter the global one.
namespace
{
    PluginRegistrant<mime> reg(_T("mime"));
}

// constructor
mime::mime()
{
    // Make sure our resources are available.
    // In the generated boilerplate code we have no resources but when
    // we add some, it will be nice that this code is in place already ;)
    if(!Manager::LoadResource(_T("mime.zip")))
    {
        NotifyMissingFile(_T("mime.zip"));
    }
}

// destructor
mime::~mime()
{
}

void mime::OnAttach()
{
    // do whatever initialization you need for your plugin
    // NOTE: after this function, the inherited member variable
    // m_IsAttached will be TRUE...
    // You should check for it in other functions, because if it
    // is FALSE, it means that the application did *not* "load"
    // (see: does not need) this plugin...
}

void mime::OnRelease(bool appShutDown)
{
    // do de-initialization for your plugin
    // if appShutDown is true, the plugin is unloaded because Code::Blocks is being shut down,
    // which means you must not use any of the SDK Managers
    // NOTE: after this function, the inherited member variable
    // m_IsAttached will be FALSE...
}

int mime::Configure()
{
    //create and display the configuration dialog for your plugin
    cbConfigurationDialog dlg(Manager::Get()->GetAppWindow(), wxID_ANY, _("Your dialog title"));
    cbConfigurationPanel* panel = GetConfigurationPanel(&dlg);
    if (panel)
    {
        dlg.AttachConfigurationPanel(panel);
        PlaceWindow(&dlg);
        return dlg.ShowModal() == wxID_OK ? 0 : -1;
    }
    return -1;
}

bool mime::CanHandleFile(const wxString& filename) const
{
    NotImplemented(_T("mime::CanHandleFile()"));
    return false;
}

int mime::OpenFile(const wxString& filename)
{
    NotImplemented(_T("mime::OpenFile()"));
    return -1;
}

bool mime::HandlesEverything() const
{
    NotImplemented(_T("mime::HandlesEverything()"));
    return false;
}

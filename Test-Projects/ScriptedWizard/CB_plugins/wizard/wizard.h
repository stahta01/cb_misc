/***************************************************************
 * Name:      wizard
 * Purpose:   Code::Blocks plugin
 * Author:    me ()
 * Created:   2014-06-07
 * Copyright: me
 * License:   GPL
 **************************************************************/

#ifndef WIZARD_H_INCLUDED
#define WIZARD_H_INCLUDED

// For compilers that support precompilation, includes <wx/wx.h>
#include <wx/wxprec.h>

#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

#include <cbplugin.h> // for "class cbWizardPlugin"

class wizard : public cbWizardPlugin
{
    public:
        /** Constructor. */
        wizard();
        /** Destructor. */
        virtual ~wizard();

        /** @return the number of template wizards this plugin contains */
        virtual int GetCount() const;
        
        /** @param index the wizard index.
          * @return the output type of the specified wizard at @c index */
        virtual TemplateOutputType GetOutputType(int index) const;
        
        /** @param index the wizard index.
          * @return the template's title */
        virtual wxString GetTitle(int index) const;
        
        /** @param index the wizard index.
          * @return the template's description */
        virtual wxString GetDescription(int index) const;
        
        /** @param index the wizard index.
          * @return the template's category (GUI, Console, etc; free-form text). Try to adhere to standard category names... */
        virtual wxString GetCategory(int index) const;
        
        /** @param index the wizard index.
          * @return the template's bitmap */
        virtual const wxBitmap& GetBitmap(int index) const;
        
        /** @param index the wizard index.
          * @return this wizard's script filename (if this wizard is scripted). */
        virtual wxString GetScriptFilename(int index) const;
        
        /** When this is called, the wizard must get to work ;).
          * @param index the wizard index.
          * @param createdFilename if provided, on return it should contain the main filename
          *                         this wizard created. If the user created a project, that
          *                         would be the project's filename.
          *                         If the wizard created a build target, that would be an empty string.
          *                         If the wizard created a file, that would be the file's name.
          * @return a pointer to the generated cbProject or ProjectBuildTarget. NULL for everything else (failure too).
          * You should dynamic-cast this to the correct type based on GetOutputType() 's value. */
        virtual CompileTargetBase* Launch(int index, wxString* createdFilename = 0);
    protected:
        /** Any descendent plugin should override this virtual method and
          * perform any necessary initialization. This method is called by
          * Code::Blocks (PluginManager actually) when the plugin has been
          * loaded and should attach in Code::Blocks. When Code::Blocks
          * starts up, it finds and <em>loads</em> all plugins but <em>does
          * not</em> activate (attaches) them. It then activates all plugins
          * that the user has selected to be activated on start-up.\n
          * This means that a plugin might be loaded but <b>not</b> activated...\n
          * Think of this method as the actual constructor...
          */
        virtual void OnAttach();

        /** Any descendent plugin should override this virtual method and
          * perform any necessary de-initialization. This method is called by
          * Code::Blocks (PluginManager actually) when the plugin has been
          * loaded, attached and should de-attach from Code::Blocks.\n
          * Think of this method as the actual destructor...
          * @param appShutDown If true, the application is shutting down. In this
          *         case *don't* use Manager::Get()->Get...() functions or the
          *         behaviour is undefined...
          */
        virtual void OnRelease(bool appShutDown);

        wxBitmap m_Bitmap;
};

#endif // WIZARD_H_INCLUDED

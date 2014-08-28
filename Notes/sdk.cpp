#include <sdk.h>

// wxWidgets headers in both wx/wx.h and sdk_common.h
#if defined(CB_PRECOMP) || defined(WX_PRECOMP)
    // wxWidgets non GUI headers
    #include <wx/app.h>
    #include <wx/arrstr.h>
    #include <wx/choicdlg.h>
    #include <wx/dynarray.h>
    #include <wx/event.h>
    #include <wx/hashmap.h>
    #include <wx/intl.h>
    #include <wx/list.h>
    #include <wx/log.h>
    #include <wx/string.h>
    #include <wx/timer.h>
    #include <wx/utils.h>

    // wxWidgets GUI headers
    #include <wx/bmpbuttn.h>
    #include <wx/button.h>
    #include <wx/checkbox.h>
    #include <wx/checklst.h>
    #include <wx/choice.h>
    #include <wx/combobox.h>
    #include <wx/dcclient.h>
    #include <wx/dialog.h>
    #include <wx/filedlg.h>
    #include <wx/font.h>
    #include <wx/frame.h>
    #include <wx/image.h>
    #include <wx/listbox.h>
    #include <wx/menu.h>
    #include <wx/menuitem.h>
    #include <wx/msgdlg.h>
    #include <wx/panel.h>
    #include <wx/radiobox.h>
    #include <wx/radiobut.h>
    #include <wx/sizer.h>
    #include <wx/slider.h>
    #include <wx/statbmp.h>
    #include <wx/stattext.h>
    #include <wx/textctrl.h>
    #include <wx/textdlg.h>
    #include <wx/toolbar.h>
#endif // #if defined(CB_PRECOMP) || defined(WX_PRECOMP)

// wxWidgets headers in sdk_common.h; but, not in wx/wx.h
#if defined(CB_PRECOMP)
    // wxWidgets non GUI headers
    #include <wx/confbase.h>
    #include <wx/datetime.h>
    #include <wx/dir.h>
    #include <wx/file.h>
    #include <wx/filename.h>
    #include <wx/fs_zip.h>
    #include <wx/process.h>
    #include <wx/regex.h>
    #include <wx/socket.h>
    #include <wx/thread.h>
    #include <wx/txtstrm.h>
    #include <wx/wfstream.h>

    // wxWidgets GUI headers
    #include <wx/colordlg.h>
    #include <wx/imaglist.h>
    #include <wx/listctrl.h>
    #include <wx/notebook.h>
    #include <wx/print.h>
    #include <wx/spinctrl.h>
    #include <wx/splitter.h>
    #include <wx/treectrl.h>
    #include <wx/xrc/xmlres.h>
#endif // #if defined(CB_PRECOMP)

// CB SDK Headers in sdk_common.h
#ifndef CB_PRECOMP
    // basic headers
    #include <settings.h>
    #include <globals.h>
    #include <sdk_events.h>
    #include <cbexception.h>

    // absolute base classes
    #include <logger.h>
    #include <editorbase.h>
    #include <cbeditor.h>
    #include <compileoptionsbase.h>
    #include <compiletargetbase.h>
    #include <projectbuildtarget.h>
    #include <projectfile.h>
    #include <cbplugin.h>
    #include <cbproject.h>
    #include <cbtool.h>
    #include <cbworkspace.h>
    #include <compilerfactory.h>
    #include <compiler.h>
    #include <workspaceloader.h>
    #include <editorcolourset.h>
    #include <pipedprocess.h>
    #include <scrollingdialog.h>
    #include <cbauibook.h>

    // managers
    #include <manager.h>
    #include <configmanager.h>
    #include <editormanager.h>
    #include <logmanager.h>
    #include <projectmanager.h>
    #include <menuitemsmanager.h>
    #include <scriptingmanager.h>
    #include <toolsmanager.h>
    #include <templatemanager.h>
    #include <macrosmanager.h>
    #include <pluginmanager.h>
    #include <personalitymanager.h>
    #include <uservarmanager.h>
    #include <filemanager.h>

    // other base files
    #include <xtra_res.h>
    #include <safedelete.h>
    #include <infowindow.h>
    #include <licenses.h>
#endif // #ifndef CB_PRECOMP

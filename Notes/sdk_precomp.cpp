// sdk_precomp.h must be the first include in the file to work as a PCH
#include "sdk_precomp.h"

#if !defined(WX_PRECOMP)
    // wxWidgets non GUI headers in wx/wx.h; but, not in sdk_common.h

    // wxWidgets GUI headers in wx/wx.h; but, not in sdk_common.h
//    #include <wx/dirdlg.h>
//    #include <wx/gauge.h>
//    #include <wx/gdicmn.h>
//    #include <wx/settings.h>
#endif // #if !defined(WX_PRECOMP)

#ifndef CB_PRECOMP
    // wxWidgets non GUI headers in sdk_common.h
//    #include <wx/app.h>
//    #include <wx/arrstr.h>
//    #include <wx/choicdlg.h>
//    #include <wx/confbase.h>
//    #include <wx/datetime.h>
//    #include <wx/dir.h>
//    #include <wx/dynarray.h>
//    #include <wx/event.h>
//    #include <wx/file.h>
//    #include <wx/filename.h>
//    #include <wx/fs_zip.h>
//    #include <wx/hashmap.h>
//    #include <wx/intl.h>
//    #include <wx/list.h>
//    #include <wx/log.h>
//    #include <wx/process.h>
//    #include <wx/regex.h>
//    #include <wx/socket.h>
//    #include <wx/string.h>
//    #include <wx/thread.h>
//    #include <wx/timer.h>
//    #include <wx/txtstrm.h>
//    #include <wx/utils.h>
//    #include <wx/wfstream.h>

    // wxWidgets GUI headers in sdk_common.h
//    #include <wx/bmpbuttn.h>
//    #include <wx/button.h>
//    #include <wx/checkbox.h>
//    #include <wx/checklst.h>
//    #include <wx/choice.h>
//    #include <wx/colordlg.h>
//    #include <wx/combobox.h>
//    #include <wx/dcclient.h>
//    #include <wx/dialog.h>
//    #include <wx/filedlg.h>
//    #include <wx/font.h>
//    #include <wx/frame.h>
//    #include <wx/image.h>
//    #include <wx/imaglist.h>
//    #include <wx/listbox.h>
//    #include <wx/listctrl.h>
//    #include <wx/menu.h>
//    #include <wx/menuitem.h>
//    #include <wx/msgdlg.h>
//    #include <wx/notebook.h>
//    #include <wx/panel.h>
//    #include <wx/print.h>
//    #include <wx/radiobox.h>
//    #include <wx/radiobut.h>
//    #include <wx/sizer.h>
//    #include <wx/slider.h>
//    #include <wx/spinctrl.h>
//    #include <wx/splitter.h>
//    #include <wx/statbmp.h>
//    #include <wx/stattext.h>
//    #include <wx/textctrl.h>
//    #include <wx/textdlg.h>
//    #include <wx/toolbar.h>
//    #include <wx/treectrl.h>
//    #include <wx/xrc/xmlres.h>

    // CB SDK Headers in sdk_common.h
//    #include "wx/wxscintilla.h"
//    #include "editorcolourset.h"
//    #include "settings.h"
//    #include "globals.h"
//    #include "sdk_events.h"
//    #include "cbexception.h"
//    #include "logger.h"
//    #include "editorbase.h"
//    #include "cbeditor.h"
//    #include "compileoptionsbase.h"
//    #include "compiletargetbase.h"
//    #include "projectbuildtarget.h"
//    #include "projectfile.h"
//    #include "cbplugin.h"
//    #include "cbproject.h"
//    #include "cbtool.h"
//    #include "cbworkspace.h"
//    #include "compilerfactory.h"
//    #include "compiler.h"
//    #include "workspaceloader.h"
//    #include "pipedprocess.h"
//    #include "scrollingdialog.h"
//    #include "cbauibook.h"
//    #include "manager.h"
//    #include "configmanager.h"
//    #include "editormanager.h"
//    #include "logmanager.h"
//    #include "projectmanager.h"
//    #include "menuitemsmanager.h"
//    #include "scriptingmanager.h"
//    #include "toolsmanager.h"
//    #include "templatemanager.h"
//    #include "macrosmanager.h"
//    #include "pluginmanager.h"
//    #include "personalitymanager.h"
//    #include "uservarmanager.h"
//    #include "filemanager.h"
//    #include "xtra_res.h"
//    #include "safedelete.h"
//    #include "infowindow.h"
//    #include "licenses.h"
#endif // #ifndef CB_PRECOMP

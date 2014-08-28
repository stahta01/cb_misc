#include "sdk_precomp.h"

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

#endif // #ifndef CB_PRECOMP

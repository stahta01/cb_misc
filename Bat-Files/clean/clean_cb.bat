set WX_VERSION_SUFFIX=
set CB_OBJECT_DIR=.objs

    call clean_core_objs.bat %CB_OBJECT_DIR%
REM PAUSE
    call clean_PCH_objs.bat %CB_OBJECT_DIR%
REM PAUSE
    call clean_contrib_objs.bat %CB_OBJECT_DIR%
REM PAUSE
    call clean_misc_files.bat %WX_VERSION_SUFFIX%
REM PAUSE


set WX_VERSION_SUFFIX=30
set CB_OBJECT_DIR=.objs30

    call clean_core_objs.bat %CB_OBJECT_DIR%
REM PAUSE
    call clean_PCH_objs.bat %CB_OBJECT_DIR%
REM PAUSE
    call clean_contrib_objs.bat %CB_OBJECT_DIR%
REM PAUSE
    call clean_misc_files.bat %WX_VERSION_SUFFIX%
REM PAUSE


    PAUSE

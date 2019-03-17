@echo off
rem
rem   Set up the environment for building firmware from this source directory.
rem
call build_vars

rem   Get assembler "library" include files.  These are left in the SRC/PIC
rem   directory.
rem
call src_get_ins_aspic pic adda
call src_get_ins_aspic pic divu
call src_get_ins_aspic pic fwtype
call src_get_ins_aspic pic lookinc
call src_get_ins_aspic pic mulu
call src_get_ins_aspic pic port
call src_get_ins_aspic pic std_def
call src_get_ins_aspic pic std
call src_get_ins_aspic pic suba
call src_get_ins_aspic pic regs
call src_get_ins_aspic pic stack

call src_ins_aspic %srcdir% %fwname%lib -set make_version
call src_get_ins_aspic %srcdir% %fwname%
call src_get_ins_aspic %srcdir% %fwname%_test


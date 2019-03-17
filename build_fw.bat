@echo off
rem
rem   Build the firmware from this source directory.
rem
setlocal
call build_fwinit

call src_aspic %srcdir% %fwname%_ad
call src_aspic %srcdir% %fwname%_adda
call src_aspic %srcdir% %fwname%_divu
call src_aspic %srcdir% %fwname%_init
call src_aspic %srcdir% %fwname%_intr
call src_aspic %srcdir% %fwname%_led
call src_aspic %srcdir% %fwname%_lookinc
call src_aspic %srcdir% %fwname%_main
call src_aspic %srcdir% %fwname%_mulu
call src_aspic %srcdir% %fwname%_port
call src_aspic %srcdir% %fwname%_prom
call src_aspic %srcdir% %fwname%_regs
call src_aspic %srcdir% %fwname%_stack
call src_aspic %srcdir% %fwname%_suba
call src_aspic %srcdir% %fwname%_test
call src_aspic %srcdir% %fwname%_teusb
call src_aspic %srcdir% %fwname%_tlprg
call src_aspic %srcdir% %fwname%_tpprg
call src_aspic %srcdir% %fwname%_tprg
call src_aspic %srcdir% %fwname%_uart

call src_libpic %srcdir% %fwname%

call src_aspic %srcdir% %fwname%_strt
call src_expic %srcdir% %fwname%

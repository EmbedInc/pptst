@echo off
rem
rem   Build everything from this source directory.
rem
setlocal
call godir "(cog)source/picprg/pptst"

call build_fw
call build_doc

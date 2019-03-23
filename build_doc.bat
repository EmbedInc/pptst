@echo off
rem
rem   BUILD_DOC
rem
rem   "Build" all the generic documentation from this source directory.  That
rem   generally means just copying it into the Embed DOC directory.
rem
setlocal
call build_vars
get_newer (cog)source/document.css (cog)doc/document.css
get_newer (cog)source/paper.jpg (cog)doc/paper.jpg
get_newer doc (cog)doc

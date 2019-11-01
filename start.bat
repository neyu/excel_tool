@echo off

::start bin/excel_tool
bin\excel_tool.exe
::call:sleep 2000 excel_tool



echo.
pause&goto:eof

::
:sleep
set /a time = %1/1000
echo sleep %time%s for %2...
echo Wscript.sleep 1000 > y.vbs
call y.vbs && del y.vbs
goto:eof
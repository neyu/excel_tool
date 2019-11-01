@echo off

set GOPATH=%~dp0
echo %GOPATH%


echo build tool...
go build -o bin/excel_tool.exe services/tool


echo build over !!!
echo.
pause&goto:eof

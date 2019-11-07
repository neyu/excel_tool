@echo off

set GOPATH=%~dp0
echo %GOPATH%


echo build tool...
go build -o bin/excel2txt.exe tools/excel2txt
go build -o bin/classify.exe tools/classify


echo build over !!!
echo.
pause&goto:eof

@echo off

set GOPATH=%~dp0
echo %GOPATH%


echo build excel2txt...
go build -o bin/excel2txt.exe tools/excel2txt

echo build classify...
go build -o bin/classify.exe tools/classify

echo build conf2conv...
go build -o bin/conf2conv.exe tools/conf2conv

echo build over !!!
echo.
pause&goto:eof

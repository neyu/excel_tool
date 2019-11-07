@echo off
echo Stopping excel2txt...
taskkill /F /IM excel2txt.exe > nul

echo Stopping classify...
taskkill /F /IM classify.exe > nul

pause
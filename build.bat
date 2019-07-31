@echo off
set CWD=%~dp0
set VS=%PROGRAMFILES(x86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\
set UTIL=%CWD%\util
set PATH=%VS%;%UTIL%;%PATH%;

set FLAGS=-p:Configuration=Release -p:OutputPath="%CWD%\bin"

if not exist util\nuget.exe goto download

nuget restore

msbuild DSCM.sln -m -nr:false %FLAGS%
goto end

:download
echo NuGet is needed to get project packages
echo Click the link in the util folder to download it
echo.
pause

:end

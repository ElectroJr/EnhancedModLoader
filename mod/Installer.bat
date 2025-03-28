@echo off    

rem automatically copies avrt.dll to cosmoteer bin folder

rem  take current dir
set "crt_dir=%~dp0"

rem go 4 levels up 
for %%I in ("%crt_dir%\..\..\..\..") do set "root=%%~fI"

set "bindir=%root%\common\Cosmoteer\Bin\"

echo +----------------------------------------------+
echo Installing to %bindir%
echo +----------------------------------------------+

if exist "%bindir%\Cosmoteer.exe" (
	goto found
) else (
	goto notfound
)

:found
copy /b/v/y "%crt_dir%AVRT.dll" "%bindir%AVRT.dll"
if exist "%bindir%AVRT.dll" (
	goto installfinished
)
echo Something went wrong while copying AVRT.dll
echo Please install manually by copying AVRT.dll to %bindir%

goto end

:installfinished
echo +----------------------------------------------+
echo Installation successfull!
echo +----------------------------------------------+
goto end

:notfound
echo Error: Could not find Cosmoteer Bin Folder!
echo Please install manually by copying AVRT.dll to your Cosmoteer Bin folder

:end
pause
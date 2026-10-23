:: Move dlls & other files into the mod folder
@echo off

mkdir mod

copy x64\Release\EnhancedModLoader.dll mod\AVRT.dll
copy x64\Release\EnhancedModLoader.pdb mod\AVRT.pdb

cd EML_Helper
dotnet publish -c Release -f net10.0-windows -o bin\Publish
cd bin\Publish
copy EML_Helper.deps.json          ..\..\..\mod\
copy 0Harmony.dll                  ..\..\..\mod\
copy EML_Helper.dll                ..\..\..\mod\
copy EML_Helper.runtimeconfig.json ..\..\..\mod\
copy EML_Helper.pdb                ..\..\..\mod\

pause
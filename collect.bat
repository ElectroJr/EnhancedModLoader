:: Move dlls & other files into the mod folder
@echo off

mkdir mod\pdbs

copy x64\Release\EnhancedModLoader.dll mod\AVRT.dll
copy x64\Release\EnhancedModLoader.pdb mod\pdbs\AVRT.pdb

cd EML_Helper
dotnet publish -c Release -f net9.0-windows -o bin\Publish
cd ..
copy EML_Helper\bin\Publish\0Harmony.dll mod\0Harmony.dll
copy EML_Helper\bin\Publish\EML_Helper.dll mod\EML_Helper.dll
copy EML_Helper\bin\Publish\EML_Helper.runtimeconfig.json mod\EML_Helper.runtimeconfig.json
copy EML_Helper\bin\Publish\EML_Helper.pdb mod\pdbs\EML_Helper.pdb

pause
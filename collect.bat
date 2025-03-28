:: Move dlls & other files into the mod folder
@echo off

mkdir mod\leave_this_folder_here\pdbs

copy x64\Release\EnhancedModLoader.dll mod\AVRT.dll
copy x64\Release\EnhancedModLoader.pdb mod\leave_this_folder_here\pdbs\AVRT.pdb

cd EML_Helper
dotnet publish -c Release -f net9.0-windows -o Publish
cd ..
copy EML_Helper\bin\Publish\0Harmony.dll mod\0Harmony.dll
copy EML_Helper\bin\Publish\EML_Helper.dll mod\leave_this_folder_here\EML_Helper.dll
copy EML_Helper\bin\Publish\EML_Helper.runtimeconfig.json mod\leave_this_folder_here\EML_Helper.runtimeconfig.json
copy EML_Helper\bin\Publish\EML_Helper.pdb mod\leave_this_folder_here\pdbs\EML_Helper.pdb

pause
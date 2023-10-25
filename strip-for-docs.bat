@echo off

dotnet tool install -g BepInEx.AssemblyPublicizer.Cli

set "source=source/Assembly-CSharp.dll"
set "stripped=Assembly-CSharp-stripped.dll"

if exist "%stripped%" (
    echo Deleting stripped: %stripped%
    del "%stripped%"
)

echo Stripping %source%
assembly-publicizer "%source%" -o "%stripped%" --strip-only
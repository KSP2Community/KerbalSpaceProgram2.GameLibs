@echo off

dotnet tool install -g BepInEx.AssemblyPublicizer.Cli

set "source=source"
set "publicized=lib"

if exist "%publicized%" (
    echo Deleting publicized: %publicized%
    rmdir /s /q "%publicized%"
)
mkdir "%publicized%"

for %%F in ("%source%\*.dll") do (
    echo Publicizing %%F
    assembly-publicizer "%%F" -o "%publicized%\%%~nxF" --strip
)

nuget pack -OutputDirectory nuget -OutputFileNamesWithoutVersion
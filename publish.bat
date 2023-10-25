@echo off

dotnet nuget push -s https://nuget.spacewarp.org/v3/index.json -k %SwApiKey% nuget\KerbalSpaceProgram2.GameLibs.nupkg
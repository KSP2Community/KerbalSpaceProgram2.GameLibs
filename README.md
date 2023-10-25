# KSP 2 game libraries

This repository contains the tools needed to create stripped versions of the KSP 2 game libraries.

## Usage

### NuGet package

To create the stripped and publicized libraries for the KerbalSpaceProgram2.GameLibs NuGet package, follow these steps:

1. Clone this repository
2. Copy the DLLs from `<KSP2>/KSP2_x64_Data/Managed` to the `source` folder. **Do NOT** copy the Unity and standard .NET assemblies, and assemblies of libraries we reference from their own NuGet packages, including:
    - Microsoft.CSharp.dll
    - mscorlib.dll
    - netsandard.dll
    - Newtonsoft.Json.*.dll
    - nunit.framework.dll
    - System.*.dll
    - Unity.*.dll
    - UnityEngine.*.dll
3. Run `build.bat`. This will create the stripped libraries in the `lib` folder, and immediately pack them into `nuget/KerbalSpaceProgram2.GameLibs.nupkg`.
4. Run `publish.bat` to publish the package to nuget.spacewarp.org. You will need to either have the environment variable `%SwApiKey%` set to the API key for nuget.spacewarp.org, or you will need to edit the `publish.bat` and replace the variable with the API key.

### Documentation

To create the stripped Assembly-CSharp.dll for purpose of generating the documentation XML, follow these steps:

1. Clone this repository
2. Copy `Assembly-CSharp.dll` from `<KSP2>/KSP2_x64_Data/Managed` to the `source` folder.
3. Run `strip-for-docs.bat`. This will create the stripped file called `Assembly-CSharp-stripped.dll` in the root folder.
@ECHO OFF
set DEST=D:\DevNow\OpenBLAS
set "sourceFolder=%CD%"
set "buildFolder=%CD%\build_vs2019"
mkdir %buildFolder%
set "buildType=Debug"
REM set "generator=MinGW Makefiles"
set "generator=Visual Studio 16 2019"

@ECHO Generate for %generator%

cmake.exe -B"%buildFolder%/" -H"%sourceFolder%/" -G"%generator%" -Ax64 -DCMAKE_BUILD_TYPE=%buildType% -DCMAKE_INSTALL_PREFIX=%DEST%
cd /D %buildFolder%
"C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/MSBuild/Current/Bin/MSBuild.exe" INSTALL.vcxproj /p:Configuration=%buildType% /p:Platform=x64 /p:VisualStudioVersion=16.0 -m:%NUMBER_OF_PROCESSORS% -lowPriority:False
PAUSE
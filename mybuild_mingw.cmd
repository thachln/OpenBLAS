@ECHo OFF
set DEST=F:\Projects\github.com\thachln\build_opencv\dep\OpenBLAS
set "sourceFolder=%CD%"
set "buildFolder=%CD%\build_mingw"
mkdir %buildFolder%
set "buildType=Release"
set "generator=MinGW Makefiles"
REM set "generator=Visual Studio 16 2019"

@ECHO Generate for %generator%

cmake.exe -B"%buildFolder%/" -H"%sourceFolder%/" -G"%generator%" -DCMAKE_BUILD_TYPE=%buildType% -DCMAKE_INSTALL_PREFIX=%DEST%
cd /D %buildFolder%
make install 

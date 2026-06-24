@echo off
chcp 65001 >nul

title SlayTheSpire2.LAN.Multiplayer.Reforged Build

echo.
echo ==========================================
echo SlayTheSpire2.LAN.Multiplayer.Reforged
echo Clean + Restore + Build
echo ==========================================
echo.

echo [1/4] Cleaning solution...
dotnet clean .\SlayTheSpire2.LAN.Multiplayer.Reforged.sln -c Release

if errorlevel 1 (
    echo.
    echo Clean failed.
    pause
    exit /b 1
)

echo.
echo [2/4] Removing old build outputs...

if exist ".\SlayTheSpire2.LAN.Multiplayer.Reforged\bin" (
    rmdir /s /q ".\SlayTheSpire2.LAN.Multiplayer.Reforged\bin"
)

if exist ".\SlayTheSpire2.LAN.Multiplayer.Reforged\obj" (
    rmdir /s /q ".\SlayTheSpire2.LAN.Multiplayer.Reforged\obj"
)

echo.
echo [3/4] Restoring NuGet packages...
dotnet restore .\SlayTheSpire2.LAN.Multiplayer.Reforged.sln

if errorlevel 1 (
    echo.
    echo Restore failed.
    pause
    exit /b 1
)

echo.
echo [4/4] Building Release...
dotnet build .\SlayTheSpire2.LAN.Multiplayer.Reforged.sln ^
-c Release ^
--no-restore

if errorlevel 1 (
    echo.
    echo Build failed.
    pause
    exit /b 1
)

echo.
echo ==========================================
echo Build completed successfully.
echo ==========================================
echo.

echo Output:
echo .\SlayTheSpire2.LAN.Multiplayer.Reforged\bin\Release\net9.0\
echo.

pause
@echo off
REM verify_setup.bat - Quick verification that all required files are present (Windows)

echo === LTspice OTA Project Setup Verification ===
echo.

set all_ok=1

if exist "simulations\OTA.asc" (
    echo ✓ simulations\OTA.asc
) else (
    echo ✗ simulations\OTA.asc (MISSING)
    set all_ok=0
)

if exist "simulations\tsmc018.lib" (
    echo ✓ simulations\tsmc018.lib
) else (
    echo ✗ simulations\tsmc018.lib (MISSING)
    set all_ok=0
)

if exist "simulations\cmosn.asy" (
    echo ✓ simulations\cmosn.asy
) else (
    echo ✗ simulations\cmosn.asy (MISSING)
    set all_ok=0
)

if exist "simulations\cmosp.asy" (
    echo ✓ simulations\cmosp.asy
) else (
    echo ✗ simulations\cmosp.asy (MISSING)
    set all_ok=0
)

if exist "simulations\OTA.plt" (
    echo ✓ simulations\OTA.plt
) else (
    echo ✗ simulations\OTA.plt (MISSING)
    set all_ok=0
)

if exist "models\tsmc018.lib" (
    echo ✓ models\tsmc018.lib
) else (
    echo ✗ models\tsmc018.lib (MISSING)
    set all_ok=0
)

if exist "README.md" (
    echo ✓ README.md
) else (
    echo ✗ README.md (MISSING)
    set all_ok=0
)

if exist ".gitignore" (
    echo ✓ .gitignore
) else (
    echo ✗ .gitignore (MISSING)
    set all_ok=0
)

echo.
if %all_ok%==1 (
    echo ✓ All required files present!
    echo.
    echo To run the simulation:
    echo   1. Open LTspice
    echo   2. File ^> Open ^> simulations\OTA.asc
    echo   3. Click Run (▶) or press Ctrl+R
) else (
    echo ✗ Some files are missing. Please check the repository.
    exit /b 1
)
@echo off
echo ========================================================
echo   Pushing Naruto Profile to github.com/dipeshmaurya08-dot
echo ========================================================
echo.

cd /d "%~dp0"

if not exist .git (
    echo [1/4] Initializing Git repository...
    git init -b main
) else (
    echo [1/4] Git repository already initialized.
)

echo [2/4] Staging files...
git add -A

echo [3/4] Committing...
git commit -m "Naruto Shinobi GitHub profile arc 🍥"

echo [4/4] Setting remote and pushing...
git remote remove origin 2>nul
git remote add origin https://github.com/dipeshmaurya08-dot/dipeshmaurya08-dot.git
git push -u origin main

echo.
echo ========================================================
echo   Done! Visit: https://github.com/dipeshmaurya08-dot
echo ========================================================
pause

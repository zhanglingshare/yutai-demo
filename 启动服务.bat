@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo  UTEK Yutai Local Site
echo  Port 8080 - LAN accessible
echo ============================================
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do (
  for /f "tokens=* delims= " %%b in ("%%a") do echo   http://%%b:8080
)
echo.
python -m http.server 8080 --bind 0.0.0.0
pause

@echo off
REM Script para añadir, commitear y pushear cambios al repositorio
cd /d "%~dp0"

nREM Verificar git
ngit --version >nul 2>&1
if errorlevel 1 (
  echo Git no está instalado o no está en PATH.
  pause
  exit /b 1
)
echo Haciendo git add...
git add .
echo Haciendo commit (si hay cambios)...
git commit -m "Add robots.txt and sitemap.xml for AdSense" || echo No hay cambios para commitear.
echo Haciendo push a 'main' (cambia la rama si usas 'master')...
git push origin main
echo Operación finalizada.
pause

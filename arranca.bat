@echo off
REM Activa el entorno conda "geo"
call C:\Miniconda3\Scripts\activate.bat geo

REM Aplica el parche asyncio en Windows para evitar el warning de zmq
set PYTHONSTARTUP=%~dp0patch_asyncio.py

REM Ejecuta el notebook carto.ipynb y guarda resultados en el mismo archivo
jupyter nbconvert --to notebook --execute C:\a\CARTOGRAFIA_PROVINCIAL_2025\carto.ipynb --inplace

REM Limpia la variable temporal
set PYTHONSTARTUP=

echo.
echo ✅ Notebook carto.ipynb ejecutado correctamente sin warnings de zmq
pause

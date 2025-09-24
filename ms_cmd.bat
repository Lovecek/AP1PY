@echo off
cls
Echo Zdravim, uzivateli! %time%
mkdir MujProgram\src 2>nul MujProgram\info 2>nul
if "%~1"=="" (
    set /P prom="Zadejte promennou:"
    mkdir MujProgram\%prom% 2>nul
    Echo Byla vytvorena podslozka %prom%
) else (
    mkdir MujProgram\%~1 2>nul
    Echo Byla vytvorena podslozka %~1
)
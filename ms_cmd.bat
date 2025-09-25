@echo off
REM Vyčistíme command linu, ať je to lépe čitelné co se děje. Pomocí příkazu cls
cls

REM Pozdravím uživatele pomocí Echo
REM Vypíšeme čas pomocí %time%
Echo Zdravim, uzivateli! %time%

REM Vytvoříme složky pomocí MKDIR
REM Použijeme 2>nul pro ingorování erroru, že složka už existuje
mkdir MujProgram\src 2>nul MujProgram\info 2>nul

REM Díváme se jestli uživatel zadal argument když spustil program a pojmenujem podslozku podle toho egumentu
if "%~1"=="" (
    REM Když uživatel nezadal argument
    set /P prom="Zadejte promennou:"
    mkdir MujProgram\%prom% 2>nul
    Echo Byla vytvorena podslozka: %prom%
) else (
    REM Když uživatel zadal argument
    mkdir MujProgram\%~1 2>nul
    Echo Byla vytvorena podslozka: %~1
)

REM Pingnem utb.cz jednou (to je to -n 1) server a uložíme výsledek do ping.log
REM Znovu použiváme 2>nul, abych nemusel furt vidět errory při zkoušení
ping utb.cz -n 1 > MujProgram\info\ping.log 2>nul

REM Zjistíme PATH pro MujProgram a uložíme ji do dir.log
tree MujProgram > MujProgram\info\dir.log 2>nul

REM Script ukončíme hodnotou 0
EXIT /B 0
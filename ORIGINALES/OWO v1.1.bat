@echo off
title OWO (Orquestador y Windows Updates OFF)

:menu
cls
echo.[0m
echo [32m*********************************************[0m
echo [32m**[0m [46m                                       [0m [32m**[0m
echo [32m**[0m [46m                                       [0m [32m**[0m
echo [32m**[0m [7;43m                 OWO                   [0m [32m**[0m
echo [32m**[0m [7;43m     Orquestador y Windows Updates OFF [0m [32m**[0m
echo [32m**[0m [46m                                       [0m [32m**[0m
echo [32m**[0m [46m                                       [0m [32m**[0m
echo [32m*********************************************[0m
echo [32m**[0m [94m      Script creado por NMRD - 2023 [0m    [32m**[0m
echo [32m*********************************************[0m
echo.[32m**[0m                                         [32m**[0m
echo [32m**[0m            [1;4mELIJA UNA OPCION[0m             [32m**[0m
echo.[32m**[0m                                         [32m**[0m
echo [32m**[0m  [32m1) ORQUESTADOR Y UPDATES ON[0m            [32m**[0m
echo [32m**[0m  [31m2) ORQUESTADOR Y UPDATES OFF[0m           [32m**[0m
echo [32m**[0m                                         [32m**[0m
echo [32m**[0m  3) [4mSALIR[0m                               [32m**[0m
echo [32m**[0m                                         [32m**[0m
echo [32m*********************************************[0m
echo.
set /p opcion= [91mTU ELECCION ES:[0m [94m
if "%opcion%"=="1" goto ON
if "%opcion%"=="2" goto OFF
if "%opcion%"=="3" exit


:ON

sc config UsoSvc start= auto
sc config wuauserv start= auto
sc start UsoSvc
sc start wuauserv
pause
goto menu

:OFF
sc stop UsoSvc
sc stop wuauserv
sc config UsoSvc start= disabled
sc config wuauserv start= disabled
pause
goto menu




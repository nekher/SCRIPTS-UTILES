@echo off
title XXXX

:menu
cls
echo.[0m
echo [31m*********************************************[0m
echo [31m**[0m [46m                                       [0m [31m**[0m
echo [31m**[0m [46m                                       [0m [31m**[0m
echo [31m**[0m [7;43m                 BACO                  [0m [31m**[0m
echo [31m**[0m [46m                                       [0m [31m**[0m
echo [31m**[0m [46m                                       [0m [31m**[0m
echo [31m*********************************************[0m
echo [31m**[0m [94m       Script creado por NMRD - 2024[0m    [31m**[0m
echo [31m*********************************************[0m
echo.[31m**[0m                                         [31m**[0m
echo [31m**[0m Para poder loguearse a "XXXX", primero    [31m**[0m
echo.[31m**[0m deberan dar de baja cualquier otra      [31m**[0m
echo [31m**[0m conexion que hubiera a previamente      [31m**[0m
echo.[31m**[0m En caso que el script asi lo solicite   [31m**[0m
echo [31m**[0m ACEPTEN                                 [31m**[0m
echo [31m*********************************************[0m
echo.

net use * /delete

echo [31m*********************************************[0m
echo.[31m**[0m Ahora, pedira su usuario y contraseña.  [31m**[0m
echo.[31m**[0m Recuerden que deben anteponer           [31m**[0m
echo.[31m**[0m DOMINIO\USUARIO                         [31m**[0m
echo [31m*********************************************[0m

net use M: \\NOMBREUNIDADRED\g /user:
start explorer.exe M:

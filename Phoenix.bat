@echo off
color 0c

:inicio
title PROGRAMA MULTIUSOS DE PHOENIX 1.0
echo -----------------------------------------------------------------------------------------------------------------------
set /p nombre= INGRESE SU NOMBRE:
if /i "%nombre%" == "arnold" (goto menu)
if not /i "%nombre%" == "arnold" (goto incorrecta)
cls

:menu
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (menu)
echo PROGRAMA MULTIUSOS DE PHOENIX 1.0 (menu)
echo -----------------------------------------------------------------------------------------------------------------------
echo MOMENTO DE EJECUCION: 
echo DIA: %date% HORA: %time%
echo -----------------------------------------------------------------------------------------------------------------------
echo Este programa puede eliminar archivos con  las extensiones:
echo Exe, bat, vbs, cmd, com, dll, ovl, drv, sys, bin, pif, msi, scr, msc, vbe, wsf, wsc, inf y reg.
echo SI TIENE ALGUN ARCHIVO CON ALGUNA DE LAS EXTENSIONES MENCIONADAS ANTERIORMENTE, SERA ELIMINADO AL 
echo EJECUTAR CIERTAS CARACTERISTICAS DEL PROGRAMA
echo -----------------------------------------------------------------------------------------------------------------------
echo 1. Desinfectar unidad
echo 2. Desocultar archivos de cierta unidad
echo 3. Finalizar procesos maliciosos en tu ordenador (MEMZ, 000.exe y VBS)
echo 4. Salir
echo 5. Abrir el navegador Google
echo 6. Ocultar archivos de cierta unidad
echo 7. Tomar algunas notas rapidas y guardarlas en la unidad que desees
echo 8. Apagar el ordenador
echo 9. Programar una cuanta atras en segundos
echo 10. Obtener informacion del sistema y la direccion IP
echo 11. Obtener la fecha y la hora exacta
echo 12. Obtener el informacion (ping) sobre la pagina web que quieras
echo 13. Ver el recorrido de los paquetes de la pagina web que desees
echo 14. Ver las conexiones existentes en este momento
echo 15. Ver el tu reciente historial
echo 16. Ver si tienes problemas de energia
echo 17. Hacer una lista de las tareas que se estan ejecutando
echo 18. Elimina archivos temporales inservibles de tu ordenador para optimizarlo
echo 19. Ver un listado de todos los controladores (drivers) que tienes instalados
echo 20. Modo show (fliparas)
echo 21. Podras ver si existen ciertos archivos de tu ordenador a traves del nombre
echo -----------------------------------------------------------------------------------------------------------------------
set /p opcion= INGRESE LA OPCION QUE HA ELEGIDO:
if /i %opcion%==1 goto desinfectar
if /i %opcion%==2 goto desocultar
if /i %opcion%==3 goto finalizar
if /i %opcion%==4 goto salir
if /i %opcion%==5 goto google
if /i %opcion%==6 goto ocultar
if /i %opcion%==7 goto notas
if /i %opcion%==8 goto apagar
if /i %opcion%==9 goto timer
if /i %opcion%==10 goto ip
if /i %opcion%==11 goto date
if /i %opcion%==12 goto ping
if /i %opcion%==13 goto paquetes
if /i %opcion%==14 goto conects
if /i %opcion%==15 goto historial
if /i %opcion%==16 goto energy
if /i %opcion%==17 goto tareas
if /i %opcion%==18 goto temporales
if /i %opcion%==19 goto drivers
if /i %opcion%==20 goto show
if /i %opcion%==21 goto encontrar
if not /i exist %opcion%: goto incorrecta

:desinfectar
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (desinfectar)
echo -----------------------------------------------------------------------------------------------------------------------
set /p unit= INGRESE LA LETRA DE LA UNIDAD A DESINFECTAR:
if %unit%: == %homedrive% goto incorrecta
if not exist %unit%: goto incorrecta
cd /d %unit%:\
echo DESINFECTANDO...
pause
del /f /s /q *.exe
del /f /s /q *.bat
del /f /s /q *.vbs
del /f /s /q *.cmd
del /f /s /q *.com
del /f /s /q *.dll
del /f /s /q *.ovl
del /f /s /q *.drv
del /f /s /q *.sys
del /f /s /q *.bin
del /f /s /q *.pif
del /f /s /q *.msi
del /f /s /q *.scr
del /f /s /q *.msc
del /f /s /q *.vbe
del /f /s /q *.wsf
del /f /s /q *.wsc
del /f /s /q *.inf
del /f /s /q *.reg
echo -----------------------------------------------------------------------------------------------------------------------
echo UNIDAD DESINFECTADA CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
echo.
echo                     ###########################       
echo                     ###########################               MOMENTO DE FINALIZACION:
echo                     ###########################               DIA: %date% HORA: %time%
echo                     ########################### 
echo                     ...........................
echo                     ...........................
echo            ----------------------------------------------
echo.
echo                       ########      ########
echo                        ######        ######
echo.
echo -----------------------------------------------------------------------------------------------------------------------
echo LA UNIDAD %unit% FUE DESINFECTADA EL DIA %date% A LA HORA %time%>>"Estado de unidad.txt"
pause
cls
goto menu

:desocultar
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (desocultar)
echo -----------------------------------------------------------------------------------------------------------------------
set/p U= INGRESE LA LETRA DE LA UNIDAD A DESOCULTAR:     
echo POR FAVOR, ESPERE...
echo DESOCULTANDO UNIDAD...  
attrib -r -a -h -s %U%:\*.* /S /D
pause  
echo rd C:\8585485 /S  
echo PROCESO FINALIZADO CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
cd /d %U%:\
if not exist %U%: goto incorrecta
echo LA UNIDAD %U% FUE DESOCULTADA EL DIA %date% A LA HORA %time%>>"Informe de desocultacion.txt"
pause
cls
goto menu

:finalizar
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (finalizar)
echo -----------------------------------------------------------------------------------------------------------------------
echo FINALIZANDO PROGRAMAS MALICIOSOS...
TASKKILL /F /IM MEMZ.exe
TASKKILL /F /IM memz.exe
TASKKILL /F /IM memZ.exe
TASKKILL /F /IM 000.exe
TASKKILL /F /IM wscript.exe
echo -----------------------------------------------------------------------------------------------------------------------
pause
cls
goto menu

:google
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (google)
echo -----------------------------------------------------------------------------------------------------------------------
echo SE ESTA INICIANDO GOOGLE
echo -----------------------------------------------------------------------------------------------------------------------
start www.google.com
pause
cls
goto menu

:salir
cls 
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (salir)
exit

:incorrecta
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (incorrecta)
echo -----------------------------------------------------------------------------------------------------------------------
echo ACCESO DENEGADO
echo -----------------------------------------------------------------------------------------------------------------------
pause
exit

:ocultar
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (ocultar)
echo -----------------------------------------------------------------------------------------------------------------------
set/p A= INGRESE LA LETRA DE LA UNIDAD A OCULTAR:     
echo POR FAVOR, ESPERE...
echo OCULTANDO UNIDAD...  
attrib +r +a +h +s %A%:\*.* /S /D
pause  
echo rd C:\8585485 /S  
echo PROCESO FINALIZADO CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
cd /d %A%:\
if not exist %A%: goto incorrecta
echo LA UNIDAD %A% FUE OCULTADA EL DIA %date% A LA HORA %time%>>"Informe de ocultacion.txt"
pause
cls
goto menu

:notas
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (notas)
echo -----------------------------------------------------------------------------------------------------------------------
set /p notas=INGRESA LAS NOTAS RAPIDAS QUE DESEES TOMAR:
echo -----------------------------------------------------------------------------------------------------------------------
echo SI CIERRA EL PROGRAMA, LAS NOTAS NO SE GUARDARAN
echo -----------------------------------------------------------------------------------------------------------------------
set /p unidad=INGRESA LA UNIDAD DONDE GUARDAR TUS NOTAS:
if not exist %unidad%: goto incorrecta
cd /d %unidad%:\
echo %notas%>>notas.txt
echo -----------------------------------------------------------------------------------------------------------------------
echo NOTAS GUARDADAS CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
pause 
cls 
goto menu

:apagar
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (apagar)
echo -----------------------------------------------------------------------------------------------------------------------
pause
echo -----------------------------------------------------------------------------------------------------------------------
shutdown /s /t 5
cls
goto menu

:timer
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (cuenta atras)
echo -----------------------------------------------------------------------------------------------------------------------
set /p tiempo=INGRESE LA CANTIDAD DE TIEMPO EN SEGUNDOS DE LA CUENTA ATRAS:
echo -----------------------------------------------------------------------------------------------------------------------
timeout %tiempo%
echo -----------------------------------------------------------------------------------------------------------------------
pause
echo CUENTA ATRAS FINALIZADA!!!
echo -----------------------------------------------------------------------------------------------------------------------
pause
cls 
goto menu

:ip
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (ip o informacion del sistema)
echo -----------------------------------------------------------------------------------------------------------------------
set /p pregunta=DESEA VER SU IP O OBTENER INFORMACION DEL SISTEMA? (escribir "ip" o "info"):
echo -----------------------------------------------------------------------------------------------------------------------
echo REDIRIGIENDO...
pause
if /i %pregunta%==ip goto direccion
if /i %pregunta%==info goto informacion

:informacion
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (informacion)
echo -----------------------------------------------------------------------------------------------------------------------
echo MOSTRANDO INFORMACION DEL SISTEMA...
pause
echo -----------------------------------------------------------------------------------------------------------------------
chcp
echo -----------------------------------------------------------------------------------------------------------------------
systeminfo
echo -----------------------------------------------------------------------------------------------------------------------
echo INFORMACION MOSTRADA!!!
echo -----------------------------------------------------------------------------------------------------------------------
pause 
cls 
goto menu


:direccion
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (ip)
echo -----------------------------------------------------------------------------------------------------------------------
echo MOSTRANDO DIRECCION IP...
echo -----------------------------------------------------------------------------------------------------------------------
pause
ipconfig /all
echo -----------------------------------------------------------------------------------------------------------------------
echo SU IP ES AQUELLA QUE APARECE JUNTO A LA ETIQUETA "IPv4".
echo -----------------------------------------------------------------------------------------------------------------------
pause
cls
goto menu

:date
cls 
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (dia y hora)
echo -----------------------------------------------------------------------------------------------------------------------
echo HOY ES EL DIA %date% Y AHORA MISMO SON LAS %time% EXACTAMENTE
echo -----------------------------------------------------------------------------------------------------------------------
pause
cls
goto menu

:ping
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (ping)
echo -----------------------------------------------------------------------------------------------------------------------
set/p pin=INGRESA LA PAGINA WEB DE LA QUE QUIERAS VER EL PING:
echo -----------------------------------------------------------------------------------------------------------------------
ping %pin%
echo -----------------------------------------------------------------------------------------------------------------------
echo PROCESO FINALIZADO CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
pause 
cls
goto menu

:paquetes
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (paquetes)
echo -----------------------------------------------------------------------------------------------------------------------
set/p web=INGRESA LA PAGINA WEB DE LA QUE QUIERAS VER LOS PAQUETES:
echo -----------------------------------------------------------------------------------------------------------------------
tracert %web%
echo -----------------------------------------------------------------------------------------------------------------------
echo PROCESO FINALIZADO CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
pause 
cls
goto menu

:conects
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (conexiones)
echo -----------------------------------------------------------------------------------------------------------------------
echo CARGANDO CONEXIONES EXISTENTES...
pause
echo -----------------------------------------------------------------------------------------------------------------------
netstat -ano
echo -----------------------------------------------------------------------------------------------------------------------
netstat
echo -----------------------------------------------------------------------------------------------------------------------
echo PROCESO FINALIZADO CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
pause
cls
goto menu

:historial
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (historial)
echo -----------------------------------------------------------------------------------------------------------------------
echo CARGANDO HISTORIAL...
pause
echo -----------------------------------------------------------------------------------------------------------------------
ipconfig /displaydns
echo -----------------------------------------------------------------------------------------------------------------------
echo PROCESO FINALIZADO CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
pause
cls
goto menu

:energy
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (energia)
echo -----------------------------------------------------------------------------------------------------------------------
echo CARGANDO PROBLEMAS ENERGETICOS...
echo -----------------------------------------------------------------------------------------------------------------------
powercfg /energy
echo -----------------------------------------------------------------------------------------------------------------------
echo PROCESO FINALIZADO CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
pause
cls
goto menu

:tareas
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (tareas)
echo -----------------------------------------------------------------------------------------------------------------------
echo CARGANDO TAREAS EN CURSO...
echo -----------------------------------------------------------------------------------------------------------------------
tasklist
echo -----------------------------------------------------------------------------------------------------------------------
echo PROCESO FINALIZADO CON EXITO :)
echo -----------------------------------------------------------------------------------------------------------------------
pause
cls
goto menu

:temporales
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (archivos temporales)
echo -----------------------------------------------------------------------------------------------------------------------
echo ELIMINANDOI ARCHIVOS TEMPORALES...
echo -----------------------------------------------------------------------------------------------------------------------
pause
cleanmgr
echo -----------------------------------------------------------------------------------------------------------------------
echo ESTO ES UN TUTORIAL
echo -----------------------------------------------------------------------------------------------------------------------
pause
echo -----------------------------------------------------------------------------------------------------------------------
echo PRIMERO, PULSA LA TECLA WINDOWS Y BUSCA "ejecutar"
echo -----------------------------------------------------------------------------------------------------------------------
pause
echo -----------------------------------------------------------------------------------------------------------------------
echo PRESIONA ENTER Y ESCRIBE EN LA PESTANA QUE SE TE ABRE UN PORCENTAJE, SEGUIDO DE "tmp" Y DESPUES OTRO PORCENTAJE
echo -----------------------------------------------------------------------------------------------------------------------
pause
echo -----------------------------------------------------------------------------------------------------------------------
echo TE LLEVARA A UN SITIO LLENO DE ARCHIVOS, ELIMINALOS TODOS
echo -----------------------------------------------------------------------------------------------------------------------
pause
echo -----------------------------------------------------------------------------------------------------------------------
echo ESTO ES TODO :)
echo -----------------------------------------------------------------------------------------------------------------------
pause 
cls
goto menu

:drivers
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (controladores)
echo -----------------------------------------------------------------------------------------------------------------------
echo CARGANDO CONTROLADORES EXISTENTES...
echo -----------------------------------------------------------------------------------------------------------------------
pause
driverquery
echo -----------------------------------------------------------------------------------------------------------------------
echo PROCESO FINALIZADO CORRECTAMENTE :)
echo -----------------------------------------------------------------------------------------------------------------------
pause 
cls
goto menu

:show
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (show)
echo -----------------------------------------------------------------------------------------------------------------------
echo PULSA CONTROL + C PARA DETENER
echo -----------------------------------------------------------------------------------------------------------------------
curl parrot.live
pause
cls
goto menu

:encontrar
cls
title PROGRAMA MULTIUSOS DE PHOENIX 1.0 (encontrar)
echo ------------------------------------------------------------------------------------------------------------------
echo SI EL ARCHIVO NO EXISTE, SE CERRARA ESTA PESTANA
echo ------------------------------------------------------------------------------------------------------------------
pause
echo ------------------------------------------------------------------------------------------------------------------
set /p A=INGRESA EL NOMBRE DEL ARCHIVO QUE DESEES BUSCAR EN TU ORDENADOR:
echo ------------------------------------------------------------------------------------------------------------------
pause
if /i exist %A% goto existe
if not /i exist %A% goto noexiste

:existe
cls
title BUSCADOR DE ARCHIVOS
echo ------------------------------------------------------------------------------------------------------------------
echo EL ARCHIVO EXISTE :)
echo ------------------------------------------------------------------------------------------------------------------
pause
cls
goto menu

:noexiste
cls
title BUSCADOR DE ARCHIVOS
echo ------------------------------------------------------------------------------------------------------------------
echo EL ARCHIVO NO EXISTE :(
echo ------------------------------------------------------------------------------------------------------------------
pause
cls
goto menu
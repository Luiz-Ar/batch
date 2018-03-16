@echo off
mode 54,30
color 4f
title LOGIN

:inicio
	cls
	echo.
	echo ######################################################
	echo 		LOGIN
	echo ######################################################
	echo.
	set/p user= usuario: 
	if %user% == admin (goto:senha) else (
		pause
		echo.
		echo Senha Invalida!
		goto inicio)

:senha
	set/p senha= senha: 
	if %senha% == admin (goto:menu) else (
		echo.
		echo Senha Invalida!
		pause
		goto inicio)

:menu
	cls
	echo.
	echo ######################################################
	echo 		MENU PRINCIPAL
	echo ######################################################
	echo.
	echo [1] Pacote Office
	echo [2] Aplicativos do Windows
	echo [3] Servicos de Rede
	echo [4] Gerenciamento da maquina
	echo [5] Encerrar Sessao
	echo [6] Sair do Programa
	echo.
	echo ######################################################
	echo.
	set /p op=Digite uma opcao: 
	if %op% == 1 (goto:office)
	if %op% == 2 (goto:app)
	if %op% == 3 (goto:servicos)
	if %op% == 4 (goto:maq)
	if %op% == 5 (goto:log)
	if %op% == 7 (goto:sair) else (
  		echo.
  		echo Opcao Invalida!!!
  		pause
  		goto:menu)

:sair
	set /p op=Deseja realmente sair?[S][N]:  
	if %op% == S (exit)
	if %op% == s (exit)
	if %op% == N (goto:menu)
	if %op% == n (goto:menu) else (
		echo OPCAO INVALIDA!
		echo.
		pause
		goto:sair)

:log
	set /p op=Deseja realmente efetuar logoff?[S][N]:  
	if %op% == S (goto:inicio)
	if %op% == s (goto:inicio)
	if %op% == N (goto:menu)
	if %op% == n (goto:menu) else (
		echo OPCAO INVALIDA!
		echo.
		pause
		goto:log)

:office
	cls
	echo.
	echo ######################################################
	echo 		MENU PRINCIPAL
	echo ######################################################
	echo.
	echo [W]ord
	echo [E]xcel
	echo [P]owerPoint
	echo [A]ccess
	echo [R]etornar ao menu
	echo.
	echo ######################################################
	echo.
	set /p op=Digite uma opcao: 
	if %op% == w (goto:word)
	if %op% == W (goto:word)
	if %op% == E (goto:excel)
	if %op% == e (goto:excel)
	if %op% == P (goto:powerpoint)
	if %op% == p (goto:powerpoint)
	if %op% == A (goto:banco)
	if %op% == a (goto:banco)
	if %op% == R (goto:menu)
	if %op% == r (goto:menu) else (
  echo.
  echo Opcao Invalida!!!
  pause
  goto inicio)

:word
 start winword.exe
 goto:office

:excel
start excel.exe
goto:office
:powerpoint
 start powerpnt.exe
 goto:office

:banco
start msaccess.exe
goto:office

:app
	cls
	echo.
	echo ######################################################
	echo 		APLICATIVOS DO WINDOWS
	echo ######################################################
	echo.
	echo [1] Bloco de Notas
	echo [2] Calculadora
	echo [3] Paint
	echo [4] Teclado Virtual
	echo [5] Painel de Controle
	echo [6] Windows Explorer 
	echo [R]etornar ao menu
	echo.
	echo ######################################################
	echo.
	set/p escolha=digite uma opcao: 
	if %escolha% == 1 (goto:bloco)
	if %escolha% == 2 (goto:cal)
	if %escolha% == 3 (goto:paint)
	if %escolha% == 4 (goto:tec)
	if %escolha% == 5 (goto:painel)
	if %escolha% == 6 (goto:windows)
	if %escolha% == R (goto:menu)
	if %escolha% == r (goto:menu) else ( 
	echo.
	echo Opcao Invalida!
	pause
	goto  inicio )

:cal
	start calc.exe
	goto:app

:paint
	start mspaint.exe
	goto:app

:tec
	start osk.exe
	goto:app

:bloco
	start notepad.exe
	goto:app

:painel
	start control.exe
	goto:app

:windows
	start explorer.exe
	goto:app

:servicos
	cls
	echo.
	echo ######################################################
	echo 		SERVICOS DE REDE
	echo ######################################################
	echo.
	echo [N]avegar na internet
	echo [O]bter ip da maquina
	echo [T]estar conexao de rede
	echo [W]ifi
	echo [R]etornar ao Menu
	echo.
	echo ######################################################
	set/p op= Digite a opcao desejada: 
	if %op% == N (goto:nav)
	if %op% == n (goto:nav)
	if %op% == O (goto:test)
	if %op% == o (goto:test)
	if %op% == T (goto:ip)
	if %op% == t (goto:ip)
	if %op% == W (goto:wifi)
	if %op% == w (goto:wifi)
	if %op% == R (goto:menu)
	if %op% == r (goto:menu) else (
	echo.
	echo Opcao Invalida!
	pause
	goto:servicos)

:wifi
	set/p ssid= SSID: 
	set/p pass= Senha:
	
	netsh wlan set hostednetwork  ssid=%ssid%  key=%pass%
	pause
	
	netsh wlan start hostednetwork
	pause
	goto:servicos

:nav
	set/p op=endereco: 
	start %op%
	goto:servicos

:ip
	set /p teste=Digite IP da Maquina ou Endereco: 
	ping %teste% -t
	pause
	goto:servicos

:test
	ipconfig /all
	pause
	goto:servicos

:maq
	cls
	echo.
	echo ######################################################
	echo 		GERENCIAMENTO DA MAQUINA
	echo ######################################################
	echo.
	echo [D]esligar a maquina
	echo [R]einiciar a maquina
	echo [H]ibernar a maquina
	echo [L]ogoff da maquina
	echo [M]enu principal
	echo.
	echo ######################################################
	set/p op= Digite a opcao desejada: 
	if %op% == D (goto:desligar)
	if %op% == d (goto:desligar)
	if %op% == R (goto:reiniciar)
	if %op% == r (goto:reiniciar)
	if %op% == H (goto:hibernar)
	if %op% == h (goto:hibernar)
	if %op% == L (goto:userlogoff)
	if %op% == l (goto:userlogoff)
	if %op% == M (goto:menu)
	if %op% == m (goto:menu) else (
	echo.
	echo Opcao Invalida!
	pause
	goto:maq)

:desligar
	shutdown -s -t 00

:reiniciar
	shutdown -r -t 00

:hibernar
	shutdown -h off

:userlogoff
	shutdown -l
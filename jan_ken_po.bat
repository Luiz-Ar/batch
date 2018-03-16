@echo off
mode 54,30
color 0A
title PAPEL - PEDRA - TESOURA - LARGATO - SPOCK - SCRIPTS DE REDE
set/a vit= 0
set/a der= 0
set/a emp= 0

:inicio
	cls
	echo.
	echo ######################################################
	echo 		JOGADOR
	echo ######################################################
	echo.
	set/p jogador= Nome do jogador:
	if %jogador% EQU "" (
		goto:inicio) else (
		goto:escolha)

:escolha
	cls
	echo.
	echo ######################################################
	echo 		ESCOLHA SUA JOGADA
	echo ######################################################
	echo.
	echo [1]Papel
	echo.
	echo [2]Pedra
	echo.
	echo [3]Tesoura
	echo.
	echo [4]Lagarto
	echo.
	echo [5]Spock
	echo.
	echo ******************************************************
	echo ******************************************************
	echo [P]lacar
	echo.
	echo [R]egras
	echo.
	echo [S]air do jogo
	echo.
	set/p jogada= Qual sua jogada? 
	if %jogada% EQU 1 (
		cls
		echo.
		echo ######################################################
		echo 		SUA JOGADA
		echo ######################################################
		echo.
		echo VOCE ESCOLHEU PAPEL!
		echo.
		pause >null
		goto:computador)
	if %jogada% EQU 2 (
		cls
		echo.
		echo ######################################################
		echo 		SUA JOGADA
		echo ######################################################
		echo.
		echo VOCE ESCOLHEU PEDRA!
		echo.
		pause >null
		goto:computador)
	if %jogada% EQU 3 (
		cls
		echo.
		echo ######################################################
		echo 		SUA JOGADA
		echo ######################################################
		echo.
		echo VOCE ESCOLHEU TESOURA!
		echo.
		pause >null
		goto:computador)
	if %jogada% EQU 4 (
		cls
		echo.
		echo ######################################################
		echo 		SUA JOGADA
		echo ######################################################
		echo.
		echo VOCE ESCOLHEU LAGARTO!
		echo.
		pause >null
		goto:computador)
	if %jogada% EQU 5 (
		cls
		echo.
		echo ######################################################
		echo 		SUA JOGADA
		echo ######################################################
		echo.
		echo VOCE ESCOLHEU SPOCK!
		echo.
		pause >null
		goto:computador)
	if %jogada% EQU R (
		goto:regras)
	if %jogada% EQU r (
		goto:regras)
	if %jogada% EQU P (
		goto:placar)
	if %jogada% EQU p (
		goto:placar)
	if %jogada% EQU S (
		goto:sair)
	if %jogada% EQU s (
		goto:sair) else (
		cls
		echo.
		echo ######################################################
		echo 		SUA JOGADA
		echo ######################################################
		echo.
		echo JOGADA INVALIDA! TENTE NOVAMENTE!
		echo.
		pause >null
		goto:escolha)

:computador
	echo.
	set /a pcjogada=(%Random% %% 5) + 1
	if %pcjogada% EQU 1 (
		cls
		echo.
		echo ######################################################
		echo 		JOGADA DO COMPUTADOR
		echo ######################################################
		echo.
		echo COMPUTADOR ESCOLHEU PAPEL!
		echo.
		pause >null
		goto:disputa)
	if %pcjogada% EQU 2 (
		cls
		echo.
		echo ######################################################
		echo 		JOGADA DO COMPUTADOR
		echo ######################################################
		echo.
		echo COMPUTADOR ESCOLHEU PEDRA!
		echo.
		pause >null
		goto:disputa)
	if %pcjogada% EQU 3 (
		cls
		echo.
		echo ######################################################
		echo 		JOGADA DO COMPUTADOR
		echo ######################################################
		echo.
		echo COMPUTADOR ESCOLHEU TESOURA!
		echo.
		pause >null
		goto:disputa)
	if %pcjogada% EQU 4 (
		cls
		echo.
		echo ######################################################
		echo 		JOGADA DO COMPUTADOR
		echo ######################################################
		echo.
		echo COMPUTADOR ESCOLHEU LAGARTO!
		echo.
		pause >null
		goto:disputa)
	if %pcjogada% EQU 5 (
		cls
		echo.
		echo ######################################################
		echo 		JOGADA DO COMPUTADOR
		echo ######################################################
		echo.
		echo COMPUTADOR ESCOLHEU SPOCK!
		echo.
		pause >null
		goto:disputa) else (goto:inicio)

:disputa
	if %jogada% EQU %pcjogada% (
		set/a emp= %emp% + 1
		cls
		echo.
		echo ######################################################
		echo 		EMPATADOS
		echo ######################################################
		echo.
		echo EMPATOU!
		echo.
		pause >null
		goto:placar)
	if %jogada% EQU 1 (
		if %pcjogada% EQU 2 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo PAPEL COBRE PEDRA! VOCE VENCEU!
			set/a vit= %vit% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 3 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo TESOURA CORTA PAPEL! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 4 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo LAGARTO COME PAPEL! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 5 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo PAPEL REFUTA SPOCK! VOCE VENCEU!
			set/a vit= %vit% + 1
			echo.
			pause >null
			goto:placar))
	if %jogada% EQU 2 (
		if %pcjogada% EQU 1 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo PAPEL COBRE PEDRA! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 3 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo PEDRA QUEBRA TESOURA! VOCE VENCEU!
			set/a vit= %vit% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 4 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo PEDRA ESMAGA LAGARTO! VOCE VENCEU!
			set/a vit= %vit% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 5 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo SPOCK VAPORIZA PEDRA! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar))
	if %jogada% EQU 3 (
		if %pcjogada% EQU 1 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo TESOURA CORTA PAPEL! VOCE VENCEU!
			set/a vit= %vit% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 2 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo PEDRA QUEBRA TESOURA! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 4 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo TESOURA DECEPA LAGARTO! VOCE VENCEU!
			set/a vit= %vit% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 5 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo SPOCK DERRETE TESOURA! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar))
	if %jogada% EQU 4 (
		if %pcjogada% EQU 1 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo LAGARTO COME PAPEL! VOCE VENCEU!
			set/a vit= %vit% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 2 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo PEDRA ESMAGA LAGARTO! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 3 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo TESOURA DECEPA LAGARTO! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 5 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo LAGARTO ENVENENA SPOCK! VOCE VENCEU!
			set/a vit= %vit% + 1
			echo.
			pause >null
			goto:placar))
	if %jogada% EQU 5 (
		if %pcjogada% EQU 1 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo PAPEL REFUTA SPOCK! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 2 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo SPOCK VAPORIZA PEDRA! VOCE VENCEU!
			set/a vit= %vit% + 1
			echo.
			pause >null
			goto:placar)
		if %pcjogada% EQU 3 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE VENCEU!!! =D
			echo ######################################################
			echo.
			echo SPOCK DERRETE TESOURA! VOCE VENCEU!
			set/a vit= %vit% + 1
			pause >null
			goto:placar)
		if %pcjogada% EQU 4 (
			cls
			echo.
			echo ######################################################
			echo 		VOCE PERDEU!!! =(
			echo ######################################################
			echo.
			echo LAGARTO ENVENENA SPOCK! VOCE PERDEU!
			set/a der= %der% + 1
			echo.
			pause >null
			goto:placar))

:sair
	cls
	echo.
	echo ######################################################
	echo 		DESEJA REALMENTE SAIR? [S][N]
	echo ######################################################
	echo.
	set /p op= ""
	if %op% EQU S (exit)
	if %op% EQU s (exit)
	if %op% EQU N (goto:escolha)
	if %op% EQU n (goto:escolha) else (
		echo Opcao invalida!
		echo.
		pause >null
		goto:sair)

:placar
	if %vit% GTR %der% (
		cls
		echo.
		echo ######################################################
		echo 			PLACAR
		echo ######################################################
		echo.
		echo VOCE ESTA VENCENDO!!!
		echo.
		echo %jogador%: %vit%
		echo Computador: %der%
		echo Empates: %emp%
		echo.
		pause >null
		goto:escolha)
	if %vit% LSS %der% (
		cls
		echo.
		echo ######################################################
		echo 			PLACAR
		echo ######################################################
		echo.
		echo VOCE ESTA PERDENDO!!!
		echo.
		echo %jogador%: %vit%
		echo Computador: %der%
		echo Empates: %emp%
		echo.
		pause >null
		goto:escolha)
	if %vit% EQU %der% (
		cls
		echo.
		echo ######################################################
		echo 			PLACAR
		echo ######################################################
		echo.
		echo VOCES ESTAO EMPATADOS!!!
		echo.
		echo %jogador%: %vit%
		echo Computador: %der%
		echo Empates: %emp%
		echo.
		pause >null
		goto:escolha)

:regras
	cls
	echo.
	echo ######################################################
	echo 		REGRAS DO JOGO
	echo ######################################################
	echo.
	echo a - Papel cobre pedra!
	echo.
	echo b - Papel refuta Spock!
	echo.
	echo c - Pedra quebra tesoura!
	echo.
	echo d - Pedra esmaga lagarto!
	echo.
	echo e - Tesoura corta papel!
	echo.
	echo f - Tesoura decepa lagarto!
	echo.
	echo g - Lagarto envenena Spock!
	echo.
	echo h - Lagarto come papel!
	echo.
	echo i - Spock derrete tesoura!
	echo.
	echo j - Spock vaporiza pedra!
	echo.
	pause >null
	goto:escolha
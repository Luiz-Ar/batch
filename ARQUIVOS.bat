@echo off
color 0a
mode 80,40
:inicio
cls
echo =======================
echo    MENU PRINCIPAL
echo =======================
echo [1] Gerar arquivo
echo [2] Organizar Arquivos
echo [3] Ocultar Arquivos
echo [4] Exibir Arquivos
echo [5] Encerrar Programa
echo =======================
set /p op=Digite uma opcao:
if %op% == 1 (goto:gerar)
if %op% == 2 (goto:organizar)
if %op% == 3 (goto:ocultar)
if %op% == 4 (goto:exibir)
if %op% == 5 (exit) else (
	echo.
	echo Opcao Invalidade!
	pause > null
	goto:inicio)

:gerar
	set /p qtde=Digite a qtde de arquivor a serem gerados:
	set /p nome=Digite o nome do arquivo:
	set /p ext=Digite a extensão do arquivo:
	for /L %%n in (1,1,%qtde%) do echo set dir > %nome%%%n.%ext%
	pause > nul
	goto:inicio

:organizar
	set /p pasta=Digite o nome da pasta a ser criada:
	set /p ext=Digite a extensão do arquivo:
	C:
	C:\Users\lj133\Documents
	md %pasta%
	move *.%ext% C:\Users\lj133\Documents\%pasta%
	echo Arquivos organizados com sucesso!!
	pause > nul
	goto:inicio

:ocultar
	set /p pasta=Digite o nome da pasta:
	C:
	C:\Users\lj133\Documents
	attrib %pasta% +r +h
	echo Pasta ocultada com sucesso
	pause > nul
	goto:inicio
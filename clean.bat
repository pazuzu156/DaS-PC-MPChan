@echo off
set CWD=%~dp0
if exist bin rmdir /s /q bin
if exist dist rmdir /s /q dist
if exist packages rmdir /s /q packages

cd %CWD%\DaS-PC-MPChan
if exist bin rmdir /s /q bin
if exist obj rmdir /s /q obj

cd %CWD%

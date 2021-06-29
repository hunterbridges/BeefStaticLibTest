@echo off
SET "vcvars32=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvars32.bat"
cd %~dp0

setlocal EnableDelayedExpansion
call "%vcvars32%"

nmake %1


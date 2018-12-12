@echo off & setlocal EnableDelayedExpansion
set counter=0
for /F "eol=; tokens=* delims==" %%i in (C:\Users\med\OneDrive\aliases\aliases.txt) do (
	set /A counter+=1	
	if !counter! gtr 9 (ECHO !counter!: %%i) else (ECHO 0!counter!: %%i)
	echo.
)
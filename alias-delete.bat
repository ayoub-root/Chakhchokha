@echo off & setlocal EnableDelayedExpansion
set counter=0
for /F "eol=; tokens=* delims==" %%i in (C:\Users\med\OneDrive\aliases\aliases.txt) do (
    set /A counter+=1	
	if !counter! == %1 (echo Alias "%1 : %%i" successfuly deleted) else (echo %%i >>C:\Users\med\OneDrive\aliases\aliases_tmp.txt)
)
xcopy C:\Users\med\OneDrive\aliases\aliases_tmp.txt C:\Users\med\OneDrive\aliases\aliases.txt /y > nul
del C:\Users\med\OneDrive\aliases\aliases_tmp.txt /f /q
aliases-load

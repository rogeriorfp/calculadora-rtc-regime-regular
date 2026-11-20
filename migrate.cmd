@echo off

if exist ".\calculadora\db" (
    del /f /q ".\calculadora\db\*" 2>nul
    for /d %%D in (".\calculadora\db\*") do rmdir /s /q "%%D"
)

if not exist ".\calculadora\db" mkdir ".\calculadora\db"

call mvnw.cmd -N -Dflyway.configFiles=.\flyway\flyway-pro.conf flyway:migrate

exit /b %ERRORLEVEL%
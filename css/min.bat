@echo off
REM Delete main.min.css
IF EXIST main.min.css DEL /F main.min.css
IF EXIST custom.min.css DEL /F custom.min.css
REM Re create main.min.css w/ source code updated
uglifycss buttons.css modals.css default.css --output main.min.css
uglifycss custom.css --output custom.min.css
REM Pause to see output
PAUSE > nul
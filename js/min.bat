@echo off
REM Delete main.min.js
IF EXIST main.min.js DEL /F main.min.js
REM Re create main.min.js w/ source code updated
REM css-filters-polyfills must be excluded from bundle because must be instantiated before being referenced
uglifyjs classie.js custom.js modalEffects.js modernizr.custom.js cssParser.js -o main.min.js
REM Pause to see output
PAUSE > nul
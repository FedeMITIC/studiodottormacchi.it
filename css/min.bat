@echo off
REM Create main.min.css w/ source code updated
uglifycss buttons.css modals.css default.css --output main.min.css
uglifycss custom.css --output custom.min.css
REM Pause to see output
PAUSE > nul
@echo OFF
REM Deploy script
REM copy .\index.html
COPY index.html C:\Bitnami\wampstack-7.1.14-0\apache2\htdocs\studiodottormacchi.it\
REM copy js files in their folder (only minified ones)
COPY .\js\main.min.js C:\Bitnami\wampstack-7.1.14-0\apache2\htdocs\studiodottormacchi.it\js\
COPY .\js\css-filters-polyfill.min.js C:\Bitnami\wampstack-7.1.14-0\apache2\htdocs\studiodottormacchi.it\js\
COPY .\js\semantic.min.js C:\Bitnami\wampstack-7.1.14-0\apache2\htdocs\studiodottormacchi.it\js\
COPY .\js\jquery-3.3.1.slim.min.js C:\Bitnami\wampstack-7.1.14-0\apache2\htdocs\studiodottormacchi.it\js\
REM copy css files in their folder (only minified ones)
COPY .\css\main.min.css C:\Bitnami\wampstack-7.1.14-0\apache2\htdocs\studiodottormacchi.it\css\
COPY .\css\custom.min.css C:\Bitnami\wampstack-7.1.14-0\apache2\htdocs\studiodottormacchi.it\css\
REM copy images
ROBOCOPY .\images\ C:\Bitnami\wampstack-7.1.14-0\apache2\htdocs\studiodottormacchi.it\images\ /E
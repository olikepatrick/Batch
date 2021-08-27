@echo off


cd .\onward\github\OWSF\OWSF_Beta_V1

call .\venv\Scripts\activate.bat
echo Open venv
call python manage.py runserver 192.168.40.144:3000
echo Open Platform
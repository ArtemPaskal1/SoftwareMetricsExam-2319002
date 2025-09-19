@echo off
SET PYTHON_PATH=C:\Users\artem\AppData\Local\Programs\Python\Python313\python.exe
SET LOG_DIR="C:\Users\artem\Desktop\EXAM\factorial(n)\JenkinsLogs"
if not exist %LOG_DIR% mkdir %LOG_DIR%
"%PYTHON_PATH%" -m pip install -r "C:\Users\artem\Desktop\EXAM\factorial(n)\requirements.txt" > "%LOG_DIR%\log1.txt" 2>&1
"%PYTHON_PATH%" -m pytest "C:\Users\artem\Desktop\EXAM\factorial(n)\main.py" >> "%LOG_DIR%\log1.txt" 2>&1

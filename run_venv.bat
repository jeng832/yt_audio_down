@echo off
setlocal enabledelayedexpansion

REM 프로젝트 루트 기준 실행
cd /d %~dp0

set VENV_DIR=.venv

REM Python 확인
where python >nul 2>nul
if errorlevel 1 (
  echo Python을 찾을 수 없습니다. Python 3를 설치한 후 PATH에 추가하세요.
  exit /b 1
)

REM venv 생성(없으면)
if not exist "%VENV_DIR%" (
  python -m venv "%VENV_DIR%"
)

REM venv 활성화
call "%VENV_DIR%\Scripts\activate.bat"

REM pip 최신화 및 의존성 설치
python -m pip install --upgrade pip
pip install -r requirements.txt

REM 인자 확인
if "%~1"=="" (
  echo Usage: run_venv.bat ^<YouTube URL^>
  exit /b 1
)

REM 실행
python yt_audio_down.py "%~1"

echo 완료되었습니다. 가상환경을 종료하려면 'deactivate'를 입력하세요.
endlocal


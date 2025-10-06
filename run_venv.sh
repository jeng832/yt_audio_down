#!/bin/bash

set -euo pipefail

# 프로젝트 루트 기준 실행
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

VENV_DIR=".venv"

# Python 확인
if ! command -v python3 >/dev/null 2>&1; then
  echo "python3 명령을 찾을 수 없습니다. Python 3를 설치해주세요." >&2
  exit 1
fi

# venv 생성(없으면)
if [ ! -d "$VENV_DIR" ]; then
  python3 -m venv "$VENV_DIR"
fi

# venv 활성화
source "$VENV_DIR/bin/activate"

# pip 최신화 및 의존성 설치
python -m pip install --upgrade pip
pip install -r requirements.txt

# 사용법
if [ $# -ne 1 ]; then
  echo "Usage: ./run_venv.sh <YouTube URL>" >&2
  deactivate
  exit 1
fi

# 실행
python yt_audio_down.py "$1"

# 종료 시 venv 유지(사용자가 반복 사용할 수 있게)
echo "완료되었습니다. 가상환경을 종료하려면 'deactivate'를 입력하세요."

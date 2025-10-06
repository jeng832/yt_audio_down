## 유튜브 오디오 추출기 (MP3)

유튜브 동영상의 오디오를 MP3 파일로 쉽게 저장할 수 있는 간단한 도구입니다.

이 도구는 실행할 때 자동으로 가상환경(venv)을 만들고 필요한 프로그램을 설치한 뒤, 입력한 유튜브 링크에서 MP3를 추출해 프로젝트 폴더에 저장합니다. 파일명은 동영상 제목으로 저장됩니다.

### 준비물
- **Python 3** (3.8 이상 권장)
- **FFmpeg** (오디오 추출에 필요)

FFmpeg는 무료 멀티미디어 도구입니다. 설치가 안 되어 있으면 아래 방법으로 설치하세요.
- macOS: `brew install ffmpeg` (Homebrew가 없으면 먼저 설치 후 진행)
- Windows(권장): `choco install ffmpeg` (Chocolatey가 없으면 먼저 설치)
- 기타 방법: [ffmpeg.org](https://ffmpeg.org) 또는 [Gyan FFmpeg builds](https://www.gyan.dev/ffmpeg/builds/) 참고

## 사용 방법

### macOS / Linux
1. 이 폴더를 다운로드(또는 압축 해제)합니다.
2. 터미널을 열고, 이 폴더로 이동합니다.
   ```bash
   cd /폴더/경로/yt_audio_down
   ```
3. 처음 한 번만 실행 권한을 부여합니다.
   ```bash
   chmod +x run_venv.sh
   ```
4. 아래처럼 유튜브 링크를 넣어 실행합니다.
   ```bash
   ./run_venv.sh "https://www.youtube.com/watch?v=예시ID"
   ```
   - 처음 실행 시 가상환경 생성 및 필요한 패키지 설치가 자동으로 진행됩니다.
   - 완료 후 MP3 파일이 이 폴더에 생성됩니다. 파일명은 "동영상 제목.mp3" 입니다.
5. 작업을 마친 뒤 가상환경을 종료하려면:
   ```bash
   deactivate
   ```

### Windows
1. 이 폴더를 다운로드(또는 압축 해제)합니다.
2. 명령 프롬프트(또는 PowerShell)를 열고, 이 폴더로 이동합니다.
   ```bat
   cd C:\경로\yt_audio_down
   ```
3. 아래처럼 유튜브 링크를 넣어 실행합니다.
   ```bat
   run_venv.bat "https://www.youtube.com/watch?v=예시ID"
   ```
   - 처음 실행 시 가상환경 생성 및 필요한 패키지 설치가 자동으로 진행됩니다.
   - 완료 후 MP3 파일이 이 폴더에 생성됩니다. 파일명은 "동영상 제목.mp3" 입니다.
4. 작업을 마친 뒤 가상환경을 종료하려면:
   ```bat
   deactivate
   ```

## 결과물은 어디에 저장되나요?
- 이 프로젝트 폴더(현재 폴더)에 저장됩니다.
- 파일명은 유튜브 동영상 제목 기반으로 `제목.mp3` 형태입니다.
- Windows 금지 문자는 자동으로 안전하게 치환됩니다.

## 참고 정보
- macOS/Linux 실행 스크립트: `run_venv.sh`
- Windows 실행 스크립트: `run_venv.bat`
- 파이썬 스크립트: `yt_audio_down.py` (유튜브 오디오를 192kbps MP3로 변환)
- 의존성: `requirements.txt` (자동 설치됨)




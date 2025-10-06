import yt_dlp

def download_audio(url):
    ydl_opts = {
        'format': 'bestaudio/best',
        'postprocessors': [{
            'key': 'FFmpegExtractAudio',
            'preferredcodec': 'mp3',
            'preferredquality': '192',
        }],
        'outtmpl': '%(title)s.%(ext)s',
        'windowsfilenames': True,
    }

    with yt_dlp.YoutubeDL(ydl_opts) as ydl:
        ydl.download([url])

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 2:
        print("Usage: python yt_audio_down.py <YouTube URL>")
        sys.exit(1)

    youtube_url = sys.argv[1]
    download_audio(youtube_url)

@echo off
echo Downloading FFMPEG...
curl -L "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbFUxUzJPMlNvMmtxVUdwVk1oSWxTSkc1a29IP2U9clE3OUlX/root/content" -o ffmpeg.exe
echo Download complete. Press any key to exit.
pause >nul
exit
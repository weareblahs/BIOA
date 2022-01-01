@echo on
:: Import variables - general
for /f "delims=" %%i in ('LocalVariables config.ini image general_overlay_image') do set ol=%%i >nul
:: Import variables - FFMPEG finetune
for /f "delims=" %%i in ('LocalVariables config.ini image quality') do set quality=%%i >nul
for /f "delims=" %%i in ('LocalVariables config.ini image x') do set x=%%i >nul
for /f "delims=" %%i in ('LocalVariables config.ini image y') do set y=%%i >nul
for /f "delims=" %%i in ('LocalVariables config.ini image outformat') do set out=%%i >nul
for /f "delims=" %%i in ('LocalVariables config.ini ffmpeg_finetune_image_advanced custom_args') do set custom_args=%%i >nul

:: Start process

for %%i in (input\*.*) DO ffmpeg -i "%%i" -i "%ol%" -filter_complex "[0:v][1:v] overlay=%x%:%y%:enable='between(t,0,20)'" -q:v %quality% %custom_args% %cd%\output\%%~ni.%out%
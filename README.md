# BMOA: Batch Multimedia Overlay Adder
This script allows you to add transparent images on top of another media file (image / video). Uses FFMPEG to process images over files.

## Background story
~~Maybe you shouldn't read it and get into the next step~~
One time, when I was shopping at Shopee, then I think about: How they actually put the same watermark / overlay graphics on an image while it's time consuming?

## Before you use
Download / copy FFMPEG at the same directory as the script's location. If you didn't know how to download it, just double-click on `download_ffmpeg.bat` at the root directory of this script. TL;DR:
<details>
<summary>Uhh, how to download it manually?</summary>
1.  Download FFMPEG (here)[https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z] (Direct link).
<br>
2. Unzip it then copy ffmpeg.exe under the bin directory to the same directory with this script.
</details>
<details>
<summary>Got FFMPEG?</summary>
Just copy it to the same directory where this repo is located. That's all.
</details>
<details>
<summary>FFMPEG under PATH?</summary>
Proceed to the next step. You don't have to setup FFMPEG.
</details>

## Step 2: Create overlay image
Basically, create an image with **the same width and height as the image you're going to process**, and importantly, **make it transparent**. After editing it, export as PNG. Guides coming soon.

## Step 3: Modify configuration files
First, open the `config.ini` file for editing. Use whatever editor you want. Edit this line:
```
general_overlay_image=overlay.png
```
by changing `overlay.png` to the complete path of the file. 
(more easier: just rename it to "overlay.png" then put it at the same directory as the script's location)
### Finetuning FFMPEG settings? Let me explain first:
`quality`: Change quality properties for FFMPEG image encoding. If you're exporting JPEG, then I recommend you to not change the quality property, as the JPEG file ~~will look more JPEG than usual~~ will become "blocky".
`x` and `y`: Change the X-axis and Y-axis of the overlay file on the image.
`outformat`: Change output format of image file. See [here](https://www.ffmpeg.org/general.html#toc-Image-Formats) for file formats (if it's X for encoding then it supports that fileformat for exporting).
`custom_args` (under `ffmpeg_finetune_image_advanced`): Arguments before the output name. Advanced users only.

## Step 4: Move / copy all your source files to the "input" directory
As the step heading said. Just copy what you want to add the overlay on to the "input" folder.

### IMPORTANT: Do not have spaces on filenames (or paths)
Do not have spaces on filenames or folder path, or else FFMPEG won't start encoding! The temporary fix is by downloading [Bulk Rename Utility](https://www.bulkrenameutility.co.uk/Download.php), then find space and replace these with underscores.

## Step 5: Start processing / encoding!
Just double-click on StartProcessing.bat to start processing / encoding the files. The resulting files will be at the "output" directory.

# Wait, any samples?
![image](https://user-images.githubusercontent.com/37889443/147854202-c1f9a404-e051-450a-934c-4e2c24e085ee.png)
All the sample files are included in the script by default when you downloaded it. You may delete these files safely. (or, delete sample files by running `DeleteSample.bat`)

# To-do
- [ ] Video support

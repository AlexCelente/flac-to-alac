# flac-to-alac
A simple shell script to convert .flac files to iTunes-compatible .m4a files with ALAC codec using ffmpeg.
# Dependencies
You need to have [ffmpeg](https://ffmpeg.org) installed.  You can install it via [Homebrew](https://brew.sh):  
```
$ brew install ffmpeg
```
# Usage
The script file must be in the same folder with the .flac files to convert.  
A subfolder will be created with the same name followed by "m4a" with the converted files.
```
sh flac-to-alac.sh
```

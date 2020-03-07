set -e

COUNTER=0
FORMAT=*.flac

CURRENT=${PWD##*/}
NEW_DIR="$CURRENT m4a"
mkdir -p "$NEW_DIR"

for f in $FORMAT
do
	NEW_NAME="${f%%.*}.m4a";
	ffmpeg -i "$f" -acodec alac "$NEW_NAME";
	# We just move the new files created, if there is other m4a files they don't get moved
	mv "$NEW_NAME" "./$NEW_DIR";
	COUNTER=$((COUNTER+1))
done
echo "\n$COUNTER flac files successfully converted to alac m4a. You can find them in ./$NEW_DIR\n"

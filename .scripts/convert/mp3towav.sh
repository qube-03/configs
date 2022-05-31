for f in *.mp3; do ffmpeg -i "${f}" "${f%.*}_n.wav" ; done

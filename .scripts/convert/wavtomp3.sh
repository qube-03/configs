for f in *.wav; do ffmpeg -i "${f}" "${f%.*}_n.mp3" ; done

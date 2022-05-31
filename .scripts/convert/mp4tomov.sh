for f in *.mp4; do ffmpeg -i "${f}" "${f%.*}_n.mov" ; done

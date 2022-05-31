for f in *.mkv; do ffmpeg -i "${f}" "${f%.*}_n.mov" ; done

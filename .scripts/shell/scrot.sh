#creates a screenshot with scrot + xclip, so you can paste it quickly and efficiently
scrot -s -f '/tmp/%F_%T' -e 'xclip -selection clipboard -target image/png -i $f'

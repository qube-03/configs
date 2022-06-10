#!/usr/bin/env bash

link="$(zenity --entry --title='TikTokonvert' --text='TikTok Link:' --ok-label='Convert' --cancel-label="Don't")"

videoid=$(echo $link | cut -d '/' -f 4-4)
zenity --entry --title='Here you go!' --text='Video-ID:' --entry-text="${videoid}" --ok-label='Copy' --cancel-label="Cancel" | \
xclip -selection clipboard -i
librewolf --profile /home/qube/.librewolf/n6zrkvc0.proxitok https://proxitok.herokuapp.com/

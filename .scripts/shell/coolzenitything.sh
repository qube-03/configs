zenity --list --width=400 --height=150 --title='Confirmation' --text='Are you sure you want to move the following files to ~/.local/share/Trash?' --column='Path' %F; (( $? == 0 ))

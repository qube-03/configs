while true; do
  i3 &> ~/.local/share/logs/i3.log
done

exec i3

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  export TERMINAL="alacritty"
  exec niri-session -l
fi

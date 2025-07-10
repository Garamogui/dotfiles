. "$HOME/.cargo/env"

nohup dunst &

xset r rate 300 50 &
greenclip daemon &
notify-send "Welcome back, $(whoami)!" --icon=dialog-information &

# Only keep one version of the wal-restore command with better environment setup
 (
   # Export PATH to include common locations where wal might be installed
   export PATH="$PATH:$HOME/.local/bin:/usr/local/bin:/opt/pywal/bin"

   nohup "$HOME/.local/bin/autotiling"
   
   # Log the PATH for debugging
   echo "PATH: $PATH" > "$HOME/.wal-restore.log" 2>&1
   
   # Run wal-restore with full environment and log output
   nohup "$HOME/Scripts/wal-restore" >> "$HOME/.wal-restore.log" 2>&1
 ) &

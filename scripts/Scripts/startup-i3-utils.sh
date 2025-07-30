# ~/.config/i3/i3-startup.sh
#!/usr/bin/env bash

# Add fallback PATHs if needed
export PATH="$HOME/.local/bin:$HOME/Scripts:$PATH"


# 2. Restore wallpaper and Xresources colors
"$HOME/Scripts/wal-restore.sh"

# 1. Start Polybar
"$HOME/.config/polybar/launch.sh"

# 3. Start autotiling (backgrounded)
"$HOME/.local/bin/autotiling" &

# 4. Wait for i3/picom to be fully ready before launching borders
sleep 2
"$HOME/Scripts/launch-borders.sh" &

# Optional: Log it
echo "i3 startup completed at $(date)" >> "$HOME/.cache/i3-startup.log"

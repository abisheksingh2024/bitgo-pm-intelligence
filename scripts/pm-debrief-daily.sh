#!/bin/bash

LOG=~/bitgo-pm-intelligence/logs/pm-debrief.log
mkdir -p ~/bitgo-pm-intelligence/logs

TODAY=$(date +"%Y-%m-%d")
echo "[$TODAY 23:00] Starting pm-debrief automation..." >> "$LOG"

osascript <<APPLESCRIPT
tell application "Cowork"
    activate
end tell
delay 3
tell application "System Events"
    tell process "Cowork"
        keystroke "run pm-debrief for $TODAY"
        key code 36
    end tell
end tell
APPLESCRIPT

echo "[$TODAY 23:00] pm-debrief command sent to Cowork" >> "$LOG"
sleep 300

cd ~/bitgo-pm-intelligence || exit 1
git add .

if git diff --staged --quiet; then
    echo "[$TODAY 23:00] No changes to commit" >> "$LOG"
else
    git commit -m "debrief: auto pm-debrief $TODAY"
    git push origin main
    echo "[$TODAY 23:00] Pushed to GitHub successfully" >> "$LOG"
fi

echo "[$TODAY 23:00] Done." >> "$LOG"

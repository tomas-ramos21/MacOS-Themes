on run argv
        tell application "System Events"

                tell appearance preferences
                        set light mode to true
                        set highlight color to orange
                end tell

                tell current desktop
                        set p to item 1 of argv
                        set img to p & ".jpg"
                        set picture to img
                end tell
        end tell
end run

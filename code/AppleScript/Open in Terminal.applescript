#!/usr/bin/env osascript

# Open in Terminal.applescript
#
# open a Terminal window at a folder location
#
# author  : stefan schablowski
# contact : stefan.schablowski@desmodyne.com
# created : 2017-05-01


# -----------------------------------------------------------------------------
# open Terminal window

# taken from http://stackoverflow.com/a/7098442, first code example

tell application "Finder" to set p to POSIX path of (insertion location as alias)
tell application "Terminal"
    if (exists window 1) and not busy of window 1 then
        do script "cd " & quoted form of p in window 1
    else
        do script "cd " & quoted form of p
    end if
    activate
end tell

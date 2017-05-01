#!/usr/bin/env osascript

# Open in Atom.applescript
#
# open a file or folder in Atom text editor
#
# author  : stefan schablowski
# contact : stefan.schablowski@desmodyne.com
# created : 2017-05-01


# NOTE: see also Open in Terminal.applescript


# -----------------------------------------------------------------------------
# open file or folder in Atom

# taken from https://gist.github.com/shauvik/f6b22731c9df74b092d3

# TODO: this fails with
#   Open in Atom.applescript:1348:1370: execution error:
#   Atom Helper got an error: Application isn’t running. (-600)
# possible pointers:
#   http://stackoverflow.com/q/24196536
#   http://stackoverflow.com/q/19957268

(*
 * Finder Open Atom Here - v1.0 - 6/12/2014
 * http://shauvik.com/
 *
 * Copyright (c) 2014 Shauvik Roy Choudhary
 * Dual licensed under the MIT and GPL licenses.
 * Based on Open iTerm Here script by Ben Alman
 *)

tell application "Finder"
    set mySelected to get selection as list
    if (count of mySelected) is not 0 then
        set myItem to first item of mySelected
        if class of myItem is alias file then
            set myItem to original item of myItem
        end if
        if class of myItem is in {file, document file, internet location file} then
            set myItem to container of myItem
        end if
    else if the (count of window) is not 0 then
        set myItem to folder of the front window
    else
        set myItem to path to desktop folder
    end if
    my open_Atom(myItem)
end tell

on open_Atom(myItem)
    set myPath to POSIX path of (myItem as string)
    tell application "Atom"
        open myPath
    end tell
end open_Atom

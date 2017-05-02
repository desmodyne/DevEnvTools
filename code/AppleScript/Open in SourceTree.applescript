#!/usr/bin/env osascript

# Open in SourceTree.applescript
#
# open the git repo a file or folder is part of in SourceTree
#
# author  : stefan schablowski
# contact : sschablowski@gmail.com
# created : 2017-05-02


# NOTE: see also Open in Terminal.applescript


# -----------------------------------------------------------------------------
# open file or folder in Atom

# based on https://gist.github.com/shauvik/f6b22731c9df74b092d3

# TODO: walk up folder hierarchy to find repo root with .git

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
    my open_SourceTree(myItem)
end tell

on open_SourceTree(myItem)
    set myPath to POSIX path of (myItem as string)
    tell application "SourceTree"
        open myPath
    end tell
end open_SourceTree

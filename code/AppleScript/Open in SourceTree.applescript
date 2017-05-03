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
# open git repo in SourceTree

# based on https://gist.github.com/shauvik/f6b22731c9df74b092d3

tell application "Finder"
    # NOTE: append as list seems redundant
    set selectedItems to get selection
    log "selectedItems : [" & class of selectedItems & "] - " & selectedItems

    if (count of selectedItems) is 0 then
        # http://alvinalexander.com/blog/post/mac-os-x/ ...
        #  ... applescript-display-multiline-text-in-dialog
        set dialogText to ¬
            "This application is meant be run from the Finder toolbar.\n\n" & ¬
            "There are no items currently selected in any active Finder "   & ¬
            "windows, so most likely, the application is used in a way "    & ¬
            "that is not intended by its developers."
        # https://en.wikibooks.org/wiki/AppleScript_Programming/ ...
        #  ... Advanced_Code_List/Display_Dialog
        display dialog dialogText buttons {"OK"}
        # http://stackoverflow.com/a/29390864
        return

    else if (count of selectedItems) is 1 then
        set selectedItem to first item of selectedItems
        log "selectedItem   : [" & class of selectedItem &  "] - " & selectedItem

        if class of selectedItem is folder then
            set selectedFolder to selectedItem
        else
            set selectedFolder to container of selectedItem
        end if
        log "selectedFolder : [" & class of selectedFolder &  "] - " & selectedFolder

        repeat while class of selectedFolder is not disk
            # NOTE: my is required to prevent execution error:
            # Finder got an error: Can’t continue is_gitRepoRoot. (-1708)
            # http://stackoverflow.com/q/2767069
            if my is_gitRepoRoot(selectedFolder) then
                set gitRepoRoot to selectedFolder
                exit repeat
            else
                set selectedFolder to container of selectedFolder
                log "selectedFolder : [" & class of selectedFolder &  "] - " & selectedFolder
            end if
        end repeat

    else
        log class of selectedItems
        log selectedItems
    end if

    my open_SourceTree(gitRepoRoot)

end tell

# TODO: document data type of path
on is_gitRepoRoot(path)
    set gitFolder to path as text & ".git"
    log "gitFolder : [" & class of gitFolder &  "] - " & gitFolder

    # NOTE: Finder per default does not "see" a hidden .git folder,
    # so use System Events: https://apple.stackexchange.com/q/273869
    tell application "System Events"
        if exists folder gitFolder then
            return true
        else
            return false
        end if
    end tell
end is_gitRepoRoot

on open_SourceTree(myItem)
    set myPath to POSIX path of (myItem as string)
    tell application "SourceTree"
        open myPath
    end tell
end open_SourceTree

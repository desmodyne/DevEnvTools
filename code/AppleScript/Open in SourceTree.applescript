#!/usr/bin/env osascript

# Open in SourceTree.applescript
#
# open the git repo a file or folder is part of in SourceTree
#
# author  : stefan schablowski
# contact : stefan.schablowski@desmodyne.com
# created : 2017-05-02


# NOTE: see also Open in Terminal.applescript


# -----------------------------------------------------------------------------
# open file or folder in Atom

# based on https://gist.github.com/shauvik/f6b22731c9df74b092d3

# TODO: walk up folder hierarchy to find repo root with .git

# shell script snippet to detect git repo
property isRepoRoot : "#!/usr/bin/env bash
echo 'hello'
echo \"first param: ${1}\"
exit
if [ -d \"${1}/.git\" ]
then
    echo true
else
    echo false
fi
"


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

        # NOTE: need to use "as alias" so conversions to POSIX paths succeeds
        # https://developer.apple.com/library/content/documentation/ ...
        #  ... LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ ...
        #  ... ReferenceFilesandFolders.html
        # search for "AppleScript: Converting an alias to a POSIX path string"
        # TODO: is this really true ?!?
        # http://www.satimage.fr/software/en/smile/external_codes/file_paths.html
        # https://developer.apple.com/library/content/technotes/tn2065/ ...
        #  ... _index.html#//apple_ref/doc/uid/DTS10003093-CH1-SECTION4

        if class of selectedItem is folder then
            set selectedFolder to selectedItem as alias
        else
            set selectedFolder to container of selectedItem as alias
        end if
        log "selectedFolder : [" & class of selectedFolder &  "] - " & selectedFolder

        set nameOfFolder to POSIX path of selectedFolder
        log "nameOfFolder : [" & class of nameOfFolder &  "] - " & nameOfFolder

        set theScriptResult to do shell script isRepoRoot & nameOfFolder
        # log "theScriptResult : [" & class of theScriptResult &  "] - " & theScriptResult


        # NOTE: Finder per default does not "see" a hidden .git folder
        # https://apple.stackexchange.com/a/235203
        # set result to do shell script "/bin/bash if [ -d " & quoted form of POSIX path of name of selectedFolder & " ]; then exit 1; else exit 0; done"
        # log "result: " & result

        # set AppleScript's text item delimiters to return
        # set foldersInFolder to name of folders of selectedFolder
        # log "foldersInFolder : [" & class of foldersInFolder &  "] - " & foldersInFolder
        #
        # if ".git" is in foldersInFolder then
        #     set repoRootFolder to selectedFolder
        #     log "selectedFolder : [" & class of selectedFolder &  "] - " & selectedFolder
        # end if

        # repeat while class of selectedFolder is not disk
        #     set selectedFolder to container of selectedFolder
        #     log "selectedFolder : [" & class of selectedFolder &  "] - " & selectedFolder
        #     set foldersInFolder to name of folders of selectedFolder
        # end repeat

        #
        #
        #     log "itemsInFolder : [" & class of itemsInFolder &  "] - " & itemsInFolder
        #     # log class of itemsInFolder
        #     # log itemsInFolder
        # end if
    else
        log class of selectedItems
        log selectedItems
    end if

    # if (count of selectedItems) is not 0 then
    #     set myItem to first item of selectedItems
    #     if class of myItem is alias file then
    #         set myItem to original item of myItem
    #     end if
    #     if class of myItem is in {file, document file, internet location file} then
    #         set myItem to container of myItem
    #     end if
    # else if the (count of window) is not 0 then
    #     set myItem to folder of the front window
    # else
    #     set myItem to path to desktop folder
    # end if
    # my open_SourceTree(myItem)
end tell

on open_SourceTree(myItem)
    set myPath to POSIX path of (myItem as string)
    tell application "SourceTree"
        open myPath
    end tell
end open_SourceTree

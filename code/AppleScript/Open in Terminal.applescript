#!/usr/bin/env osascript

# Open in Terminal.applescript
#
# open a Terminal window at a folder location
#
# author  : stefan schablowski
# contact : sschablowski@gmail.com
# created : 2017-05-01


# NOTE: this script is intended to be run as application from Finder toolbar

# NOTE: alternate AppleScript comment characters: -- or (* ... *); see also
# https://developer.apple.com/library/content/documentation/AppleScript/ ...
#  ... Conceptual/AppleScriptLangGuide/conceptual/ ...
#  ... ASLR_lexical_conventions.html#//apple_ref/doc/uid/TP40000983-CH214-SW8

# NOTE: insert line continuation character ¬ using Option-l (lower-case L):
# https://developer.apple.com/library/content/documentation/AppleScript/ ...
#  ... Conceptual/AppleScriptLangGuide/conceptual/ ...
#  ... ASLR_lexical_conventions.html#//apple_ref/doc/uid/TP40000983-CH214-SW9

# NOTE: about getting selected items from Finder (or the Desktop):
# + a Finder window will always report at least one selected item
#   as long as it is open (i.e. not minimized) and has focus
# + an open Finder window can lose focus by clicking in an empty Desktop area
# + items can also be selected on the Desktop; equivalent to Finder window

# TODO: atom AppleScript package syntax highlighting fails with # comments


# mac OS /Applications/Utilities/Script Editor.app supports four script formats:
#
# 1. Script, *.scpt file name pattern
#    compiled binary file, unsuitable for storage in version control system
# 2. Script Bundle, *.scptd package / folder name pattern with contents
#      Contents/Info.plist
#      Contents/Resources/description.rtfd/TXT.rtf
#      Contents/Resources/Scripts/main.scpt
#    again, main.scpt is a compiled binary file
# 3. Application, *.app package / folder name pattern with contents
#      Contents/Info.plist
#      Contents/MacOS/applet
#      Contents/PkgInfo
#      Contents/Resources/applet.icns
#      Contents/Resources/applet.rsrc
#      Contents/Resources/description.rtfd/TXT.rtf
#      Contents/Resources/Scripts/main.scpt
# 4. Text, *.applescript file name pattern
#    text file, suitable for storage in version control system
#
# The last format is the only human-readable form and is therefore used to
# maintain AppleScripts in a version control system such as git; contained code
# is compiled into the binary form automatically and transparently when the
# script is called. The other formats will be used once a script is deployed.


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

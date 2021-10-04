#------------------------------------------------------------------------------
#-- Copyright (c) 2021 Lyaaaaaaaaaaaaaaa
#--
#-- Author : Lyaaaaaaaaaaaaaaa
#--
#-- Implementation Notes:
#--  - 
#--
#-- Changelog:
#--  - 04/10/2021 Lyaaaaa
#--    - Created the file.
#------------------------------------------------------------------------------
tool
extends EditorPlugin


func _enter_tree():
    # Initialization of the plugin goes here.
    # Add the new type with a name, a parent type, a script and an icon.
    add_custom_type("FileDownloader", "HTTPRequest", preload("file_downloader.gd"), preload("icon.png"))


func _exit_tree():
    # Clean-up of the plugin goes here.
    # Always remember to remove it from the engine when deactivated.
    remove_custom_type("FileDownloader")

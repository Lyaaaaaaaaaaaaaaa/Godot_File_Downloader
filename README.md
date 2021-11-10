# Godot_File_Downloader
---


## What does this project do?
This project is a class for downloading files (through http) and supporting a progress bar.
There is sadly no built-in solution so I made this.

## Why is this project useful?
If you ever need to download files with Godot you will find out it requires
some work to make it nice and display a progress bar to your user.

Using this home made class will make it faster for you to create a downloader
in Godot.

## How to install?

1. Download the latest release
2. Copy the addons folder into your Godot project's folder
3. Enable the plugin in `Projet`, `Project settings`, `Plugins`.

## How to use?

1. Add a new node to your scene
2. Search for FileDownloader (It is a child of HTTPRequest)
3. Add a FileDownloader node in your scene
4. Clic on node and edit its script variables directly in the editor.
`File Urls` and `Save_Path`
5. Now simply call `$FileDownloader.start_download()` somewhere in your script.

*You alternatively can replace the step 4 and 5 by code*

```
var url        : PoolStringArray = ["url_to_file1","url_file_2"]
var path       : String          = "user://downloads"
var blind_mode : bool            = false
$FileDownloader.start_download(url, path, blind_mode)
```

The release ships a demo project. Feel free to run it in Godot and explore it.

## Limitations

**This project doesn't work with the 3.4 of Godot** (Only the blind mode works).
For some downloads you might encounter errors because the downloader fails to receive
the header. In this case, you need to turn on the blind mode. The blind mode is simplier
but you will have to manually calculate datas like percentage, size to download, etc.

## More information:

[Code of conduct](https://github.com/Lyaaaaaaaaaaaaaaa/Godot_File_Downloader/blob/master/CODE_OF_CONDUCT.md)

[How to contribute](https://github.com/Lyaaaaaaaaaaaaaaa/Godot_File_Downloader/blob/master/CONTRIBUTING.md)


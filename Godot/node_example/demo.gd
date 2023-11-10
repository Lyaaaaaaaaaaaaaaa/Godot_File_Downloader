extends Panel


var number_of_file_downloaded = 0
var number_of_files : int

func _on_Button_pressed():
    $FileDownloader.start_download()
    number_of_files = $FileDownloader.file_urls.size()
    $Label2.text = "0 file downloaded on " + str(number_of_files)


func _on_FileDownloader_stats_updated(p_downloaded_size,
                                      p_downloaded_percent,
                                      p_file_name,
                                      p_file_size):
    $ProgressBar.value  = p_downloaded_percent
    var file_size : String
    var downloaded_size : String

    file_size       = String.humanize_size(p_file_size)
    downloaded_size = String.humanize_size(p_downloaded_size)

    $Label.text = downloaded_size + "/" + file_size


func _on_FileDownloader_file_downloaded(p_file_name : String):
    number_of_file_downloaded += 1
    print(p_file_name + " downloaded.")
    $Label2.text = str(number_of_file_downloaded) + " file downloaded on " + str(number_of_files)


func _on_FileDownloader_downloads_started():
    print("Downloads started")


func _on_FileDownloader_downloads_finished():
    $Label2.text = "All downloads finished"

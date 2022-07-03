extends Panel



func _on_openMusic_pressed():
	$openMusicFile.visible = true

func _on_openMusicFile_file_selected(path):
	var song : AudioStream = load(path)
	print(song)
	print(path)
	$musicPlayer.set_stream(song)
	$musicPlayer.play()



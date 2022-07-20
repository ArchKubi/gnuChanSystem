extends Control


func _process(_delta):
	if gl.MusicPlayer == false:
		self.hide()
	else:
		self.show()


func _on_close_pressed():
	gl.MusicPlayer = false

func _on_LoopMusic_pressedpath(path):
	var song : AudioStream = load(path)
	$MainWindow/bottomBar/musicPlayer.set_stream(song)
	$MainWindow/bottomBar/musicPlayer.play()
	print(path)

#func _on_Button_pressed():
#	$FileDialog.visible = true
#
#func _on_FileDialog_file_selected(path):
#	var song : AudioStream = load(path)
#	$AudioStreamPlayer.set_stream(song)
#	$AudioStreamPlayer.play()

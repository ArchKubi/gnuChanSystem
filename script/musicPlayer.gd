extends Control


func _process(delta):
	if gl.MusicPlayer == false:
		self.hide()
	else:
		self.show()


func _on_close_pressed():
	gl.MusicPlayer = false

func _on_LoopMusic_pressed():
	pass # Replace with function body.

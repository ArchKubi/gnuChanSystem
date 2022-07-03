extends Control


var nsv = AudioServer.get_bus_index("Master")


func _on_SoundGV_value_changed(value):
	AudioServer.set_bus_volume_db(nsv, value)

	if value == -30:
		AudioServer.set_bus_mute(nsv, true)
	else:
		AudioServer.set_bus_mute(nsv, false)

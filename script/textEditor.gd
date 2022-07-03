extends Control

onready var openFile = get_node("fileManager/OpenFile")
onready var saveFile = get_node("fileManager/saveAsFile")
onready var textEditor = get_node("MainWindow/bottomBar/TextEdit")

var openFile_var
var saveAsFile_var
var current_file_path: String = ""


func _process(_delta):
	if gl.TextEditorShow == false:
		self.hide()
	else:
		self.show()


func _on_close_pressed():
	gl.TextEditorShow = false
func _on_openFile_pressed():
	openFile.popup_centered()
func _on_saveas_pressed():
	saveFile.popup_centered()

func _on_OpenFile_file_selected(path):
	openFile_var = File.new()
	openFile_var.open(path,1)
	current_file_path = path
	textEditor.text = openFile_var.get_as_text()

func _on_saveAsFile_file_selected(path):
	saveAsFile_var = File.new()
	saveAsFile_var.open(path,2)
	saveAsFile_var.store_string(textEditor.text)


func _on_savefile_pressed(path):
	pass

func _on_newfile_pressed():
	textEditor.text = ""

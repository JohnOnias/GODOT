extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var btns: Array = [$VBoxContainer/startBNT, $VBoxContainer/optionBNT, $VBoxContainer/quitBNT]
	
	for btn in btns:
		btn.add_theme_color_override("font_hover_color", Color("#b3ff00"))
		btn.add_theme_color_override("font_focus_color", Color("#b3ff00"))
	
	btns[0].grab_focus()

func _on_start_bnt_pressed():
	get_tree().change_scene_to_file("res://cenas/mundo.tscn");


func _on_option_bnt_pressed():
	pass # Replace with function body.

func _on_quit_bnt_pressed():
	get_tree().quit()

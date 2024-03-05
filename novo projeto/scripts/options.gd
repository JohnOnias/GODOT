extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$HSlider.value = $"/root/Global".global_volume


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Volume.text = str($HSlider.value)
	$"/root/Global".global_volume = $HSlider.value


func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://cenas/control.tscn")

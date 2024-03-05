extends Node


var global_volume = 100.00


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_bus_volume(0, global_volume / 100.0)

func set_bus_volume(bus_index:int, volume: float):
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(volume))
	AudioServer.set_bus_mute(bus_index, volume < 0.01)

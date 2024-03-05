extends CharacterBody2D




func _ready():
	$AnimatedSprite2D.play("idle_frente"); 
	
func _on_area_2d_area_entered(area: Area2D):
	
		

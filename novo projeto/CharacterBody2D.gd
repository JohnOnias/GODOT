extends CharacterBody2D


func _ready():
	$AnimatedSprite2D.play("idle")
	
func _on_area_2d_body_entered(body):
	$Sprite2D.visible = true
	print($Sprite2D.visible)


func _on_area_2d_body_exited(body):
	$Sprite2D.visible = false

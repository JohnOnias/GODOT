extends Control
@expor var player = Player

func update(): 
	value = player.currentHealth * 100 / player.max.Health

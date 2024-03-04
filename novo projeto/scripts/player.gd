extends CharacterBody2D

var direction = "none"; 
const SPEED = 100;
func _ready():
	$AnimatedSprite2D.play("idle_frente")

func _physics_process(delta):
	player_moviment(delta)
	pass

func player_moviment(delta):
	
	if Input.is_action_pressed("ui_right"): 
		play_animation(1); 
		direction = "right";
		velocity.x = SPEED;
		velocity.y = 0;
	elif Input.is_action_pressed("ui_left"): 
		play_animation(1); 
		direction = "left";
		velocity.x = -SPEED;
		velocity.y = 0;
	elif Input.is_action_pressed("ui_up"): 
		play_animation(1); 
		direction = "up";
		velocity.x = 0;
		velocity.y = -SPEED;
	elif Input.is_action_pressed("ui_down"): 
		play_animation(1); 
		direction = "down";
		velocity.x = 0;
		velocity.y = SPEED;
	else: 
		play_animation(0); 
		velocity.x = 0; 
		velocity.y = 0; 
	
	move_and_slide()
	
	
func play_animation(movement): 
	var dir = direction; 
	var anime = $AnimatedSprite2D
	
	
	if dir == "right":
		anime.flip_h = false
		if movement == 1: 
			anime.play("walk_lado"); 
		elif movement == 0: 
			anime.play("idle_lado");
			
	if dir == "left":
		anime.flip_h = true
		if movement == 1: 
			anime.play("walk_lado"); 
		elif movement == 0: 
			anime.play("idle_lado");
	
	if dir == "up":
		if movement == 1: 
			anime.play("walk_costas"); 
		elif movement == 0: 
			anime.play("idle_costas");
			
	if dir == "down":
		if movement == 1: 
			anime.play("walk_frente"); 
		elif movement == 0: 
			anime.play("idle_frente");
		

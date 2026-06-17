extends CharacterBody2D

@export var player_id : int
@export var speed : int = 100
@export var multiplier : float = 1.5
@export var max_speed = 550

func _process(_delta: float) -> void:
	
	if player_id == 1 : 
		if Input.is_action_pressed("down1") :
			velocity = Vector2(0, 1) * speed
		
		if Input.is_action_just_released("down1") :
			velocity = Vector2(0,0)
		
		if Input.is_action_pressed("up1") :
			velocity = Vector2(0, -1) * speed
		
		if Input.is_action_just_released("up1") :
			velocity = Vector2(0,0)
	
	if player_id == 2 :
		if Input.is_action_pressed("down2") :
			velocity = Vector2(0, 1) * speed
		
		if Input.is_action_just_released("down2") :
			velocity = Vector2(0,0)
		
		if Input.is_action_pressed("up2") :
			velocity = Vector2(0, -1) * speed
		
		if Input.is_action_just_released("up2") :
			velocity = Vector2(0,0)
	
	move_and_slide()

func _on_speed_timer_timeout() -> void:
	velocity *= multiplier
	velocity.limit_length(max_speed)

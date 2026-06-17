extends CharacterBody2D

@export var speed : int = 500
@export var multiplier : float = 1.5
@export var max_speed = 600

func initalize():
	var size = get_viewport().size
	velocity = Vector2(-1, 0.25) * speed
	var pos_x = size.x / 2
	var pos_y = size.y / 2
	position = Vector2(pos_x, pos_y)

func _ready() -> void:
	initalize()

func _process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision != null :
		var normal = collision.get_normal()
		velocity = velocity.bounce(normal)

func _on_speed_timer_timeout() -> void :
	
	velocity *= multiplier
	velocity.limit_length(max_speed)

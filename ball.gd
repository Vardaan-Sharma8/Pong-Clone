extends CharacterBody2D

@export var speed : int = 500
@export var multiplier : float = 1.5
@export var max_speed = 600

func _ready() -> void:
	velocity = Vector2(-1, 0.25) * speed

func _process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision != null :
		var normal = collision.get_normal()
		velocity = velocity.bounce(normal)
	
func _on_speed_timer_timeout() -> void:
	velocity *= multiplier
	velocity.limit_length(max_speed)

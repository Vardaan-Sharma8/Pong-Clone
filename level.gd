extends Node2D

var screenOBJ : PackedScene = load("res://game_over.tscn")
var screen

func game_over() :
	screen = screenOBJ.instantiate()
	add_child(screen)

func _on_left_body_entered(body) -> void:
	if body.is_in_group("ball") :
		Global.winner_ID = 2
		game_over()
		


func _on_right_body_entered(body) -> void:
	if body.is_in_group("ball") :
		Global.winner_ID = 1
		game_over()

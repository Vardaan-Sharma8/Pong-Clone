extends Node2D

func _on_left_body_entered(body) -> void:
	if body.is_in_group("ball") :
		Global.score_player_2 += 1


func _on_right_body_entered(body) -> void:
	if body.is_in_group("ball") :
		Global.score_player_1 += 1
		get_tree().call_group("ball", "initialize")
		

extends Node2D

func _on_left_body_entered(body : CharacterBody2D) -> void:
	#if body.name :
		#Global.score_player_2 += 1
		#print("p2 " + str(Global.score_player_2))
		#print("p1 " + str(Global.score_player_1))
	Global.score_player_2 += 1
	print("p2 " + str(Global.score_player_2))
	print("p1 " + str(Global.score_player_1))


func _on_right_body_entered(body : CharacterBody2D) -> void:
	#if body.is_in_group("ball") :
		#Global.score_player_1 += 1
		#print("p2 " + str(Global.score_player_2))
		#print("p1 " + str(Global.score_player_1))
	Global.score_player_1 += 1
	print("p2 " + str(Global.score_player_2))
	print("p1 " + str(Global.score_player_1))

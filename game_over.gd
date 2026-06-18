extends Control

func _ready() -> void:
	$UI/VBoxContainer/Payer_Wins.text = "Player " + str(Global.winner_ID) + " Wins!!"

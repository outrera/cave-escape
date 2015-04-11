
extends Area2D

var collected = false

func _process(delta):
	if (collected):
		free()

func _ready():
	set_process(true)
	pass

func _on_Coin_body_enter( body ):
	if (not collected and body extends preload("res://scenes/player.gd")):
		get_node("Sprite").hide()
		body.coins +=1
		body.sound.play("sound_coin")
		collected = true

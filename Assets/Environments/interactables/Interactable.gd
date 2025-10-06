extends Node2D
class_name interactable

@onready var can_interact := false

@export var pointer : AnimatedSprite2D
var PLAYER : CharacterBody2D
func _process(_delta):
	_interact_check()

func _interact_check():
	if can_interact:
		if Input.is_action_just_pressed("Interact"):
			_player_interacted()
	else:
		pass

func _player_in_range(player : CharacterBody2D):
	PLAYER = player
	can_interact = true
	pointer.speed_scale = 1
	pointer.play("start")

func _player_left_range():
	can_interact = false
	pointer.speed_scale = -1
	pointer.play("start")

func _player_interacted():
	pass

extends Area2D
class_name looper
@export var spawn : Node2D
@export var loop_to : looper
@export var world_name : String

func _ready() -> void:
	body_entered.connect(_loop_player)

func _loop_player(body: Node2D):
	if body is CharacterBody2D:
		if Global.areas[world_name] == true:
			get_tree().change_scene_to_packed(Global.hub_world)
		else:
			body.global_position = loop_to.spawn.global_position

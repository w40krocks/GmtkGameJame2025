extends interactable

@export var world : PackedScene
@onready var accessible := true


func _player_interacted():
	get_tree().change_scene_to_packed(world)

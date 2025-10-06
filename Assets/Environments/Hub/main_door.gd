extends interactable


func _process(_delta):
	_interact_check()

func _player_in_range(player : CharacterBody2D):
	PLAYER = player
	if Global.areas["bike"] == true and Global.areas["camp"] == true and Global.areas["laundry"] == true:
		can_interact = true
		pointer.speed_scale = 1
		pointer.play("start")

func _player_interacted():
	get_tree().change_scene_to_file("res://end_screen.tscn")

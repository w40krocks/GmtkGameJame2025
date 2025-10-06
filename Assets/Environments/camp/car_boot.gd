extends interactable

@onready var is_open = false

func _player_interacted():
	PLAYER._play_animation("interact")
	if is_open:
		PLAYER.has_harpoon = true
	else:
		is_open = true
		$AnimationPlayer.play("open")

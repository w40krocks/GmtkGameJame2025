extends interactable

@onready var HARPOON : PackedScene = load("res://Assets/Environments/camp/Harpoon.tscn") 
@onready var has_harpoon := false

func _player_interacted():
	print("player interacted")
	PLAYER._play_animation("interact")
	if has_harpoon:
		has_harpoon = false
		_spawn_harpoon()
		$Sprite2D.frame = 1
	else:
		if PLAYER.has_harpoon:
			PLAYER.has_harpoon = false
			has_harpoon = true
			$Sprite2D.frame = 0

func _spawn_harpoon():
	var new_harpoon = HARPOON.instantiate()
	new_harpoon.position.y += 2
	new_harpoon.position.x += -0.5
	add_child(new_harpoon)

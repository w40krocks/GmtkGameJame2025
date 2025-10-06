extends interactable

@onready var current_damage : int = 0
@export var damage_threshold : int


@export var shake_limits : Vector2
func _player_interacted():
	PLAYER._play_animation("Kick")
	current_damage +=1
	if current_damage <= damage_threshold:
		$AnimationPlayer.speed_scale =current_damage
		$AnimationPlayer.play("shake")
	else:
		$AnimationPlayer.speed_scale =1
		Global.areas["bike"] = true
		$AnimationPlayer.play("blow up")
		

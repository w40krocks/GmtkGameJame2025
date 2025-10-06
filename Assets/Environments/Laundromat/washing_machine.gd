extends interactable

@onready var is_on :=true

func _ready() -> void:
	$AnimationPlayer.play("Washing")


func _player_interacted():
	is_on = !is_on
	PLAYER._play_animation("interact")
	if is_on:
		get_parent().washing_machine_off -=1
		$AnimationPlayer.play("Washing")
	else:
		get_parent().washing_machine_off += 1
		$AnimationPlayer.play("RESET")
	

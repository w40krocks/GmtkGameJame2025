extends base_world


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("day_night_cycle")
	$Node2D2/AnimationPlayer.play("moon_cycling")

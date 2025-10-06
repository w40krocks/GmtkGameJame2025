extends StaticBody2D
class_name harpoon

@onready var harpoon_speed := -75
@onready var can_move := true
func _process(delta: float) -> void:
	if can_move:
		position.y += harpoon_speed * delta

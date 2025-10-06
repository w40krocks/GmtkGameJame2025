extends Node2D

@export var washing_machine_count : int
@onready var washing_machine_off : int



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if washing_machine_off == washing_machine_count:
		Global.areas["laundry"] = true

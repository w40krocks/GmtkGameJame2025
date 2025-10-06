extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if body is interactable:
		body._player_in_range(get_parent())

func _on_body_exited(body: Node2D) -> void:
	if body is interactable:
		body._player_left_range()


func _on_area_entered(area: Node2D) -> void:
	if area is interactable:
		area._player_in_range(get_parent())


func _on_area_exited(area: Node2D) -> void:
	if area is interactable:
		area._player_left_range()

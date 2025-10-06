extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is harpoon:
		body.can_move =false
		$"../../AnimationPlayer".speed_scale = 0


func _on_area_entered(area: Area2D) -> void:
	if area == $"../../../Sprite2D/Sun/Area2D":
		Global.areas["camp"] = true
		$"../../../AnimationPlayer".play("blow up")

extends Node2D




func _on_hit_area_entered(area: Area2D) -> void:
	if area.is_in_group("right_beat") and Input.is_action_just_pressed("ui_accept"):
		area.get_parent().get_node("Right-beat")
		pass

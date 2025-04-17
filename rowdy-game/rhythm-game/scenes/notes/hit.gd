extends Node2D



func _on_hit_area_entered(area: Area2D) -> void:
	if area.is_in_group("right_beat") and Input.is_action_just_pressed("ui_accept"):
		area.get_parent().hit()
		print(area.get_parent())
		print("True!")
		pass


func _on_too_early_area_entered(area: Area2D) -> void:
	if area.is_in_group("right_beat") and Input.is_action_just_pressed("ui_accept"):
		area.get_parent().hit()
		print(area.get_parent())
		print("Too early")
		pass


func _on_hit_area_exited(area: Area2D) -> void:
	area.get_parent().hit()
	print("late")

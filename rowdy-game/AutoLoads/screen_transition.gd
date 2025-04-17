extends CanvasLayer

@export var Transitioner : AnimationPlayer

func change_scene_to_file(target: String) -> void:
	Transitioner.play("FadeAway")
	await Transitioner.animation_finished
	get_tree().change_scene_to_file(target)
	Transitioner.play("FadeIn")
	await Transitioner.animation_finished
	Transitioner.play("RESET") # Just to make sure

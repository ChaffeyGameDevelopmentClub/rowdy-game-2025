extends Node2D
const RIGHT_BEAT = preload("res://rhythm-game/scenes/notes/right-beat.tscn")
var can_spawn: bool = true
@onready var timer: Timer = $Timer

func _process(delta: float) -> void:
	if can_spawn: _add()

func _add() -> void:
	can_spawn = false
	var new_beat = RIGHT_BEAT.instantiate()
	new_beat.global_position = self.position
	get_parent().add_child(new_beat)
	timer.start()


func _on_timer_timeout() -> void:
	can_spawn = true

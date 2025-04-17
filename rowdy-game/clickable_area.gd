extends Area2D

var clickable = false
@onready var colli: CollisionShape2D = $CollisionShape2D


func  _ready() -> void:
	if !colli.shape:
		printerr("No Shape given to clickable: ")
		printerr(self)

func _on_mouse_entered() -> void:
	clickable = true

func _on_mouse_exited() -> void:
	clickable = false

extends StaticBody2D

var clickable = false
@onready var collider: CollisionShape2D = $CollisionShape2D
@export var action_script: Script

func  _ready() -> void:
	if !collider.shape:
		printerr("No Shape given to clickable: ")
		printerr(self)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Click"):
		var space_state = get_world_2d().direct_space_state
		var point:PhysicsPointQueryParameters2D = PhysicsPointQueryParameters2D.new()
		point.position = get_global_mouse_position()
		var result = space_state.intersect_point(point)
		for dict in result:
			if dict["collider"] == self:
				print("Do Stuff Here")

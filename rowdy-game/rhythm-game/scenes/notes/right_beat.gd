extends Node2D
var speed: float = 200
func _process(delta: float) -> void:
	position -= Vector2(1,0)*delta * speed
	pass
	
func hit() -> void:
	
	print("Hit!")
	self.queue_free()

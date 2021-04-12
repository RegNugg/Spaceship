extends KinematicBody2D


func _ready():
	set_process(true)
	pass


func _process(delta):
	#Mouse Track
	var motion = (get_global_mouse_position().x - global_position.x) * 0.2
	translate(Vector2(motion, 0))
	pass
#pito

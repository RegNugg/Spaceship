extends KinematicBody2D

const speed = 2


func _ready():
	pass


func _process(delta):
	#Mouse Track
	
	var destination = get_global_mouse_position().x
	var difference = destination - position.x
	var smooth_vel = difference * speed * delta
	
	position.x += smooth_vel
	
	pass
#pito

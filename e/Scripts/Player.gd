extends KinematicBody2D

export var speed = 200
const LaserScene = preload("res://Scenes/Laser_ship.tscn")
export var Armor = 4 setget set_armor
var can_shoot = true


func _ready():
	set_process(true)
	add_to_group("Ship")
	shoot()
	pass


func _process(delta):
	
	
	var motion = (get_global_mouse_position().x - position.x) * 0.5
	translate(Vector2(motion, 0))
	
	var view_size = get_viewport_rect().size
	position.x = clamp(position.x, 0+32, view_size.x - 32)
	
	if Armor <= 0:
		can_shoot = false
	
	
	pass

func create_laser(position):
	var laser = LaserScene.instance()
	laser.position = position
	#_get_main_node().add_child(laser)
	get_tree().get_root().add_child(laser)
	
	pass
	
func shoot():
	if can_shoot:
		var left = get_node("Cannons/Left").global_position
		var right = get_node("Cannons/CoolerLeft").global_position
		create_laser(left)
		create_laser(right)
	
	pass

func set_armor(new_armor):
	Armor = new_armor
	if Armor == 0:
		if Global.Camera.shaking == false:
			Global.Camera.shaking = true
		$AnimatedSprite.play("Death")
	
	pass
func _on_ShootTimer_timeout():
	
	shoot()
	
	pass
	
#pito


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "Death":
		Global.Camera.shaking = false
		queue_free()
	pass 
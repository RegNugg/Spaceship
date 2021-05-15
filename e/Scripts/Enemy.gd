extends Area2D

export var Armor = 2 setget set_armor

export var vel = Vector2()


func _ready():
	set_process(true)
	add_to_group("Enemy")
	pass # Replace with function body.



func _process(delta):
	translate(vel * delta)
	if position.y -16 >= get_viewport_rect().size.y:
		queue_free()
	
	pass

func set_armor(new_armor):
	Armor = new_armor
	if Armor <= 0:
		$CollisionShape2D.set_deferred("disabled", true)

		Global.Camera.shaking = true
		$AnimatedSprite.play("Explosioxd")
	pass


func _on_Kamikaze_body_entered(body):
	
	if body.is_in_group("Ship"):
		body.Armor -= 1
		$AnimatedSprite.play("Explosioxd")
	pass # Replace with function body.



func _on_AnimatedSprite_animation_finished():
	
	if $AnimatedSprite.animation == "Explosioxd":
		Global.Camera.shaking = false
		queue_free()
	pass

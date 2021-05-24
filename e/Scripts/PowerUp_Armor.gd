extends "res://Scripts/PowerUp.gd"


func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PowerUp_Armor_body_entered(body):
	if body.is_in_group("Ship"):
		Global.PowerUp.play()
		body.Armor+= 1
		queue_free()
		pass
	pass # Replace with function body.

extends TextureButton



func _ready():
	connect("pressed", self, "on_pressed")
	pass 

func on_pressed():
	
	get_tree().change_scene("res://Stages/Scene1.tscn")
	pass


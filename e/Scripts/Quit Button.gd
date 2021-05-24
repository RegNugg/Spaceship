extends TextureButton


func _ready():
	connect("pressed", self, "on_pressed")
	pass 

func on_pressed():
	
	get_tree().quit()
	pass


extends TextureRect



func _ready():
	
	get_node("Label").set_text(str(Game.highscore))
	pass



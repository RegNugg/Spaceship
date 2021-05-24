extends Node

var Pause = false
var BestScore = 0
const filepath = "user://BestScore.data"


func _ready():
	Load_BestScore()
	
	pass 

func Load_BestScore():
	var file = File.new()
	if not file.file_exists(filepath): return
	file.open(filepath, File.READ)
	BestScore = file.get_var()
	file.close()
	pass

func Save_BestScore():
	var file = BestScore
	file.open(filepath, File.WRITE)
	file.store_var(BestScore)
	file.close()
	pass

func Set_BestScore(new_score):

	BestScore = new_score
	Save_BestScore()
	pass
	


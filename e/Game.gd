extends Node

var highscore=0
var puntuacio=0
var file = File.new()

func _ready():
	file.open("user://record.guarda", File.READ)
	highscore=file.get_var()
	if highscore == null:
		highscore=0
var record_file = "user://record.guarda"
func guarda_resultat():
	var file = File.new()
	file.open(record_file, File.WRITE)
	file.store_var(highscore)
	file.close()
func carrega_resultat():
	if file.file_exists(record_file):
		file.open(record_file,File.READ)
		highscore=file.get_var()
		file.close()
	else: highscore=0

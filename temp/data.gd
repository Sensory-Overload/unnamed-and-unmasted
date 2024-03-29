extends Node

const SAVE_FILE = "user://data.gay"
var game_data = {}

func _ready():
	load_data()

func save_data(content):
	var file = File.new()
	file.open(SAVE_FILE, file.WRITE)
	file.store_var(game_data)
	file.close()
	
func load_data():
	var file = File.new()
	if not file.file_exists(SAVE_FILE):
		game_data = {
			"ammo": 50,
			"health": 7,
		}
		save_data()
	file.open(SAVE_FILE, File.READ)
	game_data = file.get_var()
	file.close()
	

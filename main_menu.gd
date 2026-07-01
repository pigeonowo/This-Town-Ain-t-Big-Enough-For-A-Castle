extends Control

const game_scene: String = "uid://bsg6fkkj11nee"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%Play.pressed.connect(play)
	%Quit.pressed.connect(quit)

func play() -> void:
	%Maintheme.playing = false
	get_tree().change_scene_to_file(game_scene)

func quit() -> void:
	get_tree().quit()

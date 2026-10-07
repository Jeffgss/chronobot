extends Node

const PAUSE_MENU_SCREEN = preload("uid://t4g28tjc4e3k")
const MAIN_MENU_SCREEN = preload("uid://86vd5s3c4njx")

func _ready() -> void:
	RenderingServer.set_default_clear_color(Color(0.44,0.12,0.53,1.00))
	
	SettingsManager.loading_settings()

func start_game():
	if get_tree().paused:
		continue_game()
		return
		
	SceneManager.transition_to_scene("Level1")

func exit_game():
	get_tree().quit()
	
func pause_game():
	get_tree().paused = true
	
	var pause_menu_screen_instance = PAUSE_MENU_SCREEN.instantiate()
	get_tree().get_root().add_child(pause_menu_screen_instance)

func continue_game():
	get_tree().paused = false

func main_menu():
	var main_menu_instance = MAIN_MENU_SCREEN.instantiate()
	get_tree().get_root().add_child(main_menu_instance)

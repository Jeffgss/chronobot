extends CanvasLayer

@onready var window_model_option_button: OptionButton = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/WindowModelOptionButton
@onready var resolution_option_button: OptionButton = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/ResolutionOptionButton

var window_modes: Dictionary = {
	"FullScreen": DisplayServer.WINDOW_MODE_FULLSCREEN,
	"Window": DisplayServer.WINDOW_MODE_WINDOWED,
	"Window Maximized": DisplayServer.WINDOW_MODE_MAXIMIZED
}

var resolutions: Dictionary = {
	"320x180": Vector2i(320, 180),
	"480x270": Vector2i(480, 270),
	"640x360": Vector2i(640, 360),
	"854x480": Vector2i(854, 480),
	"1280x720": Vector2i(1280, 720),
}

func _ready() -> void:
	for window_mode in window_modes:
		window_model_option_button.add_item(window_mode)
		
	for resolution in resolutions:
		resolution_option_button.add_item(resolution)

func _on_window_model_option_button_item_selected(index: int) -> void:
	var window_mode = window_modes.get(window_model_option_button.get_item_text(index)) as int
	

func _on_resolution_option_button_item_selected(index: int) -> void:
	var resolutions = resolutions.get(resolution_option_button.get_item_text(index)) as Vector2i

func _on_main_menu_button_pressed() -> void:
	queue_free()

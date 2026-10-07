extends Node

var scenes: Dictionary = {
	"Level1": "uid://c4gwldwfnhw4j",
	"Level2": "uid://d3h1mf3hvvo0l"
}

func transition_to_scene(level: String):
	var scene_path: String = scenes.get(level)
	
	if scene_path != null:
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file(scene_path)

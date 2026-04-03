extends Node

# Reference to the container node
@onready var current_scene = $CurrentScene

func _ready():
	load_scene("res://scenes/world/test_world.tscn")

func load_scene(path: String):
	# Remove any existing children
	for child in current_scene.get_children():
		child.queue_free()

	# Load and instantiate the new scene
	var scene = load(path).instantiate()
	current_scene.add_child(scene)

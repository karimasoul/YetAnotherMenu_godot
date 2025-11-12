@tool
extends EditorPlugin


func _enable_plugin() -> void:
	# Add autoloads here.
	pass


func _disable_plugin() -> void:
	# Remove autoloads here.
	pass


func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	add_tool_menu_item("Generate menu", Callable(self, "_on_generate_main_menu"))
	
	


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_tool_menu_item("Generate menu")
	
func _on_generate_main_menu() ->void:
	var generator_scene = load("res://addons/yetanothermenu/menu_principal_generator.gd")
	if(generator_scene):
		var generator = generator_scene.new()
		generator.generate_main_menu()
	else: 
		push_error("erreur chargement scene")
	

extends Node

func generate_main_menu():
	var menu = Control.new()
	menu.name = "MenuPrincipal"
	menu.anchor_right= 1
	menu.anchor_bottom = 1
	
	var fond = ColorRect.new()
	fond.color = Color(0.1, 0.1, 0.1)
	fond.anchor_right = 1
	fond.anchor_bottom = 1
	menu.add_child(fond)
	
	var titre = Label.new()
	titre.text = "My game"
	
	titre.add_theme_color_override("font_color", Color(1,1,1))
	titre.add_theme_font_size_override("font_size", 48)
	titre.offset_top = 0.2
	titre.offset_left = 0.5
	titre.offset_left = -100
	titre.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	titre.vertical_alignment = VERTICAL_ALIGNMENT_CENTER 
	fond.add_child(titre)
	
	#boutons conteneur
	
	var vbox = VBoxContainer.new()
	vbox.offset_left = 0.5
	vbox.offset_top = 0.5
	vbox.offset_left = -100
	vbox.offset_top = -60
	fond.add_child(vbox)
	
	#bouton Pause
	var btn_pause = Button.new()
	btn_pause.text ="Pause"
	vbox.add_child(btn_pause)
	
	#bouton Param
	var btn_param = Button.new()
	btn_param.text = "Parameter"
	vbox.add_child(btn_param)
	
	#bouton Exit
	var btn_exit = Button.new()
	btn_exit.text = "Exit"
	vbox.add_child(btn_exit)
	
	#connexions à rajouter
	
	#
	var scene = PackedScene.new()
	scene.pack(menu)
	
	var file_path = "res://control.tscn"
	
	var err = ResourceSaver.save( scene, file_path)
	if err == OK:
		print("scene cree et sauvegarde")
	if Engine.has_singleton("EditorInterface"):
		var editor = Engine.get_singleton("EditorInterface")
		editor.open_scene_from_path(file_path)
	else:
		push_error("Erreur los de la sauvegarde")
	
	#ajout du menu dans la scène
	#if get_tree().current_scene:
	#	get_tree().current_scene.add_child(menu)
	#	print("ok menu generate")
	#else:
	#	push_error("aucune scene ouverte")
	
	#func _on_quit_pressed():
	#	get_tree().quit()
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 

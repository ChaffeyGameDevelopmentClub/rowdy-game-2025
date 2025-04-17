extends Control
# teehee type shi

@export var HubWorldPath : String

#var sub_menu Use this part when submenus are added

func _ready():
	pass

func _input(event):
	if event.is_action_released("ui_cancel"):
		# Use this part when submenus are added
		#if sub_menu:
			#_close_sub_menu()
		#else:
			get_tree().quit()

func _on_quit_game_pressed() -> void:
	get_tree().quit()

func _on_start_game_pressed() -> void:
	ScreenTransition.change_scene_to_file(HubWorldPath)

func _on_back_button_pressed() -> void: # Used for getting out of sub menus
	pass # Replace with function body.

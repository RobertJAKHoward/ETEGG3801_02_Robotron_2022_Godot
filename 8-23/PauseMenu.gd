extends Control

var is_paused = false setget set_is_paused


func _unhandled_input(event):
	if event.is_action_pressed("toggle_mouse_captured"):
		self.is_paused = !is_paused
		visible = is_paused
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
		
	#if event.is_action_pressed("toggle_mouse_captured"):
	#	var new_pause_state = not get_tree().paused
	#	get_tree().paused = new_pause_state
	#	new_pause_state.visible = true
		
func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_ResumeGame_pressed():
	self.is_paused = false


func _on_StartNewGame_pressed():
	self.is_paused = false
	get_tree().change_scene("res://main_scene.tscn")


func _on_Quit_pressed():
	get_tree().quit()

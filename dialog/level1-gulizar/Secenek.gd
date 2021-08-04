extends Control

signal yes
signal no

func _on_Dialoggulizar_dialog_bitti():
	set_physics_process(true)
	show()
	

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_left"):
		$yes.visible = true
		$no.visible = false
	if Input.is_action_just_pressed("ui_right"):
		$yes.visible = false
		$no.visible = true
	if Input.is_action_just_pressed("ui_accept"):
		if $yes.visible == true:
			print ("Yes")
			emit_signal("yes")
			hide()
			queue_free()
			set_physics_process(false)
		if $no.visible == true:
			print ("No")
			emit_signal("no")
			hide()
			queue_free()
			set_physics_process(false)










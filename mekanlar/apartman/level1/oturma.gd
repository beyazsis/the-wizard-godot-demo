extends Area2D
tool

export(int) var yoket

func _unhandled_input(event):
	var bodies = get_overlapping_bodies()
	print(bodies in bodies)
	for body in bodies:
		if event is InputEventKey and event.pressed and event.scancode == KEY_E and body.is_in_group("Player"):
			$oturma1.visible = true
			$oturma1.play("1")
			yoket = 1
			
			
		if event is InputEventKey and event.pressed and event.scancode == KEY_W  and $"/root/Nebula".visible == false :
			$oturma1.visible = false
			$oturma1.play("0")
			$"/root/Nebula".visible = true
			$Nebula.position = Vector2(864, 400)
			return true


signal gorunmez

func _on_oturma_body_entered(body):
	emit_signal("gorunmez")

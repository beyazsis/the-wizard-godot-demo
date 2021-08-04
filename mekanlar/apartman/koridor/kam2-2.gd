extends Area2D



func _on_kam22_body_entered(body):
	if body.is_in_group("Player"):
		$kam2.current = true
	

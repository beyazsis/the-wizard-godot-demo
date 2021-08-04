extends Area2D



func _on_kam77_body_entered(body):
	if body.is_in_group("Player"):
		$kam7.current = true

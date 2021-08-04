extends Area2D



func _on_kam55_body_entered(body):
		if body.is_in_group("Player"):
			$kam5.current = true

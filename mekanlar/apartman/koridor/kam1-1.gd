extends Area2D




func _on_kam11_body_entered(body):
	if body.is_in_group("Player"):
		$kam1.current = true

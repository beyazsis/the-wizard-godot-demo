extends Area2D

func _on_koridor21_body_entered(body):
	if body.is_in_group("Player"):
		$koridor2.current = true
			

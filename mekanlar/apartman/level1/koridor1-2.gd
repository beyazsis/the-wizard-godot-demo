extends Area2D

func _on_koridor12_body_entered(body):
	if body.is_in_group("Player"):
			$koridor.current = true



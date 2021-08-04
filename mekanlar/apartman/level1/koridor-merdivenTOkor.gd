extends Area2D

func _on_koridormerdivenTOkor_body_entered(body):
	if body.is_in_group("Player"):
		$"koridor-merdiven".current = true

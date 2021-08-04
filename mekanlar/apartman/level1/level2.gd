extends Area2D



func _on_level2_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().change_scene("res://mekanlar/apartman/koridor/level2.tscn")

extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	print(bodies)
	for body in bodies:
		if body.is_in_group("Player"):
			get_tree().change_scene("res://mekanlar/apartman/koridorlar.tscn")


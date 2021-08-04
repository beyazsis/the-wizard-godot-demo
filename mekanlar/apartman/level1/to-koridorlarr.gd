extends CollisionShape2D

export (String, FILE,"res://mekanlar/apartman/koridorlar.tscn" ) var world_exit
export (Vector2) var player_pos
func on_Area2d_body_entered(_body):
	get_tree().change_scene("res://mekanlar/apartman/koridorlar.tscn")
	

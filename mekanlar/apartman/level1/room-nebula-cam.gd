extends Area2D



func _on_roomnebulacam_body_entered(body):
	if body.is_in_group("Player"):
		$"room-nebula".current=true
	

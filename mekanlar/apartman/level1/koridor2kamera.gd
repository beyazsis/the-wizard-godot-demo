extends Area2D

func _on_koridor2kamera_body_entered(body):
	if body.get_name() == "Nebula":
		$"koridor2-1/koridor2".current = true
		

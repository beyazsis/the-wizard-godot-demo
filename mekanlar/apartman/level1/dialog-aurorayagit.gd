extends Area2D




func _on_dialogaurorayagit_body_entered(body):
	if body.name=="Nebula-mum":
		$CollisionShape2D5.disabled = true

extends AnimationPlayer


var animation_sinir = 0
	


func _on_kam22_body_entered(body):
	if body.is_in_group("Player"):
		animation_sinir += 1
	if animation_sinir ==1:
		play("1")
		animation_sinir -= 10



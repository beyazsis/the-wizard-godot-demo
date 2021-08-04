extends Area2D

var bitirici = 1
var hareket = 0
var parlaklik = 0.0002

func _physics_process(delta):
	if Input.is_action_pressed("ui_accept") and bitirici == 1:
		$isikbuyusu.energy += 0.02
		$isikbuyusu.texture_scale +=0.02
	if $isikbuyusu.energy > 2 and $isikbuyusu.texture_scale >2:
		$isikbuyusu.visible = false
	if Input.is_action_just_released("Key_R") or Input.is_action_just_released("ui_accept") :
		$isikbuyusu.energy -= 0.25
		$isikbuyusu.texture_scale -=0.25
		bitirici = 0
	if $isikbuyusu.energy ==0 and $isikbuyusu.texture_scale ==0:
		$isikbuyusu.visible = false
	
	


extends KinematicBody2D



var motion = Vector2()
###sinyal fonksiyonları####

####Nabula oda oturma sırasında nebula yok edici#####

	
func _yoketfonk():
	hide()
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = 150
		motion.y = 0
		$CollisionShape2D/Sprite.play("right")
	elif Input.is_action_pressed("ui_left"):
		motion.x = -150
		motion.y = 0
		$CollisionShape2D/Sprite.play("left")
	elif Input.is_action_pressed("ui_up"):
		motion.y = -150
		motion.x = 0
		$CollisionShape2D/Sprite.play("back")
	elif Input.is_action_pressed("ui_down"):
		motion.y = 150
		motion.x = 0
		$CollisionShape2D/Sprite.play("front")
	else:
		motion.x = 0
		motion.y = 0
	if Input.is_action_just_released("ui_down"):
		$CollisionShape2D/Sprite.play("standingfront")
	elif Input.is_action_just_released("ui_right"):
		$CollisionShape2D/Sprite.play("standingright")
	elif Input.is_action_just_released("ui_left"):
		$CollisionShape2D/Sprite.play("standingleft")
	elif Input.is_action_just_released("ui_up"):
		$CollisionShape2D/Sprite.play("standingback")
		
		
	
	
	move_and_slide(motion)



#######Buyuler#####

###Aura Suno Lili####
const magic1 = preload("res://Magic/Aura Suno Lili/Aura Suno Lili.tscn")
onready var asll1 = get_node("/root/Main")
onready var asll2 = get_node("/root/Main")
onready var asll3 = get_node("/root/Main")
func _unhandled_input(event):
		if Input.is_action_just_pressed("ui_accept"):
			if asll1.asl1==1 and asll2.asl2==1 and asll3.asl3==1:
				var aslyer = magic1.instance()
				aslyer.position = $pasifbuyunoktasi.global_position
				get_parent().add_child(aslyer)
				asll3.asl3=0
			elif Input.is_action_just_released("ui_accept"):
				asll3.asl3=1
				

##const silah = preload("res://silah.tscn")
##var silahonayi = 0
##var atishakki = 1

##func _unhandled_input(event):
	##if event is InputEventKey and event.pressed and event.scancode == KEY_Q:
		##silahonayi = 1
		##atishakki = 1
	##if event is InputEventKey and event.pressed and event.scancode == KEY_R and silahonayi == 1 and atishakki==1:
		##if $"/root/Silah".bitirici==1 :
			##silahonayi = 1
			##atishakki = 0
			##var mermiyeri = silah.instance()
			##mermiyeri.position = $silahyeri.global_position
			##get_parent().add_child(mermiyeri)
##


func _on_calsmamasas_yoket():
	hide()
	set_physics_process(false)


func _on_calsmamasas_varet():
	show()
	set_physics_process(true)

func _on_mumsifonyer_yoket():
	hide()
	$CollisionShape2D.disabled = true
	set_physics_process(false)





func _on_Dialog_hareketsizlik():
	set_physics_process(false)


func _on_Dialog_hareketlilik():
	set_physics_process(true)


func _on_Dialogmasa_hareketsizlik():
	set_physics_process(false)

func _on_Dialogmasa_hareketlilik():
	set_physics_process(true)


func _on_Dialogmumyok_hareketlilik():
	set_physics_process(true)


func _on_Dialogmumyok_hareketsizlik():
	set_physics_process(false)


func _on_Dialogaurora_hareketlilik():
	set_physics_process(true)


func _on_Dialogaurora_hareketsizlik():
	set_physics_process(false)


func _on_Dialogaurorayagit_hareketlilik():
	set_physics_process(true)


func _on_Dialogaurorayagit_hareketsizlik():
	set_physics_process(false)

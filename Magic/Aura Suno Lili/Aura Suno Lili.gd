extends KinematicBody2D
onready var target = get_node("/root/Nebula/pasifbuyunoktasi").global_position
var hareket = Vector2()
func _physics_process(delta):
		if Input.is_action_just_pressed("ui_down"):
			hareket.x = 0
			hareket.y = -50
		elif Input.is_action_just_pressed("ui_up"):
			hareket.x =0
			hareket.y =50
		elif Input.is_action_just_pressed("ui_right"):
			hareket.x = 50
			hareket.y = 0
		elif Input.is_action_just_pressed("ui_left"):
			hareket.x =-50
			hareket.y = 0
			

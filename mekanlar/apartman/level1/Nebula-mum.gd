extends KinematicBody2D


var motion = Vector2()
func _ready():
	if visible==false:
		set_physics_process(false)


func _on_mumsifonyer_yoket():
	visible = true
	set_physics_process(true)
	$CollisionShape2D.disabled = false

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = 150
		motion.y = 0
		$CollisionShape2D/Sprite.play("right-candle")
	elif Input.is_action_pressed("ui_left"):
		motion.x = -150
		motion.y = 0
		$CollisionShape2D/Sprite.play("left-candle")
	elif Input.is_action_pressed("ui_up"):
		motion.y = -150
		motion.x = 0
		$CollisionShape2D/Sprite.play("back-candle")
	elif Input.is_action_pressed("ui_down"):
		motion.y = 150
		motion.x = 0
		$CollisionShape2D/Sprite.play("front-candle")
	else:
		motion.x = 0
		motion.y = 0
	if Input.is_action_just_released("ui_down"):
		$CollisionShape2D/Sprite.play("standing-candle")
	elif Input.is_action_just_released("ui_right"):
		$CollisionShape2D/Sprite.play("sr")
	elif Input.is_action_just_released("ui_left"):
		$CollisionShape2D/Sprite.play("sl")
	elif Input.is_action_just_released("ui_up"):
		$CollisionShape2D/Sprite.play("sb")
		
		
	
	
	move_and_slide(motion)

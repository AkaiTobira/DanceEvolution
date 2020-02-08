extends Area2D

var dir          = Vector2(0, -1)
var expected_dir = Vector2(0, -1)
var SPEED = 100
var turn_speed = 1
var rotationd = 2
 
var pressed;
var dir_multipler = 1

var drived_road = []

var required_rotation = 0

func _ready():
	pass

var curr_rot = 0

func _input(event):
	if event is InputEventMouseButton:
		pressed       = event.is_pressed()
		#expected_dir = (event.position - position).normalized()
		if pressed :
			var direction = 1 if event.position.y > 400 else -1
			required_rotation += direction * PI/6
			#expected_dir = Vector2(0, -1).rotated( required_rotation )


func update_direction(delta):
	#if pressed : expected_dir = (get_global_mouse_position() - position).normalized()
	$Sprite.rotation_degrees += dir_multipler * turn_speed * delta	
	curr_rot = curr_rot + ( required_rotation - curr_rot ) * rotationd * delta
	dir = Vector2(0,-1).rotated( curr_rot ).normalized()


var timer = 0
var step  = 0.1

func _physics_process(delta): 
	
	$Line2D.points[1]  = 50 * dir
	$Line2D2.points[1] = 50 * Vector2(0, -1).rotated(required_rotation)#expected_dir
	
	timer += delta
	if timer > step: 
		timer = 0
		drived_road.append(position)
		while len(drived_road) > 25: drived_road.pop_front() 
	
	
	update_direction(delta)
	position += dir * SPEED * delta
	teleport_througt_screen()

func teleport_througt_screen():
	if position.x < 0   : get_parent().reset()
	if position.x > 600 : get_parent().reset()
	if position.y < 0   : get_parent().reset()
	if position.y > 800 : get_parent().reset()
	
#	if position.x < 0   : position.x = 600
#	if position.x > 600 : position.x = 0
#	if position.y < 0   : position.y = 800
#	if position.y > 800 : position.y = 0

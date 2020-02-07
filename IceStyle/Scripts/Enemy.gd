extends Area2D

var index = 0
var SPEED = 100
var dir 
var expected
var info

var reset_secure = false

func _ready():
	pass

var timer = 6
onready var step  = get_parent().step 

func update_index(delta):
	timer += delta
	if timer < step: return 

	timer = 0
	info = get_parent().path[index]
	index += 1
	dir      = info[0]
	expected = info[1]
#	position = info[2]

func _process(delta):
	if reset_secure : 
		info = [ Vector2(0,0), Vector2(0,0), Vector2(0,0)]
		return
		
	update_index(delta)
	update_direction(delta)
	position += dir * SPEED * delta
	teleport_througt_screen()

func teleport_througt_screen():
	if position.x < 0   : position.x = 600
	if position.x > 600 : position.x = 0
	if position.y < 0   : position.y = 800
	if position.y > 800 : position.y = 0

func update_direction(delta):
	if dir != expected:
		dir = (dir + (expected - dir) * SPEED  * delta).normalized()

func _on_Enemy_body_entered(body):
	if body.name == "Player" : get_parent().reset()

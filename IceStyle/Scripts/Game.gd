extends Node2D

onready var path = [[Vector2(0, -1),Vector2(0, -1), $Player.position]]

var timer = 0
var step  = 0.5

var timer2 = 0
var step2  = 1

var timer3 = 0

onready var player_start_pos = $Player.position

var enemy = preload( "res://Scenes/Enemy.tscn" )

func add_new_step(delta):
	timer += delta
	if timer < step: return 
	path.append([$Player.dir, $Player.expected_dir, $Player.position])
	timer = 0

func spawn_new_enemy(delta):
	timer2 += delta
	if timer2 < step2: return 
	timer2 = 0
	
	var instance = enemy.instance()
	instance.position = player_start_pos
	call_deferred("add_child", instance)

func _process(delta): 
	add_new_step(delta)
	spawn_new_enemy(delta)
	
	timer3 += delta
	$Label.text = "TIME : " + str(timer3)

func reset():
	$Player.position = player_start_pos
	for child in get_children():
		if "E" in child.get_groups():
			child.reset_secure = true
			child.call_deferred("queue_free")
	path =  [[$Player.dir, $Player.expected_dir, $Player.position]]
	
	timer3 = 0
	timer2 = 0
	timer  = 0

extends Area2D

export var idk = 0

var score     = 1
var direction = 0
var speed     = 0

func _ready():
	pass # Replace with function body.

func _process(delta):
	
	if position.x  > 1100: 
		if get_parent().invalid == idk : get_parent().lives -= 1
		queue_free()
		return
	
	if position.x  < -60: 
		if get_parent().invalid == idk : get_parent().lives -= 1
		queue_free()
		return
	position.x += direction * speed * delta

func _input(event):
	if event is InputEventMouseButton:
		if (event.position - position).length() < 50: 
			if get_parent().invalid == idk : 
				get_parent().score += score
			else:
				get_parent().lives -= 1
			queue_free()

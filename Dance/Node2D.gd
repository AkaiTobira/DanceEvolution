extends Node2D

func _ready():
	pass # Replace with function body.

var smt = preload( "res://Dance.tscn" )

var Property = 200

func _process(delta): 
	if randi()%Property == 0:
		var t = randi()%6
		var node = get_child( t )
		var ins = smt.instance()
		ins.position = node.position
		ins.dir = Vector2(0, -1 if t%2 else 1 )
		add_child(ins)
		print( "Spawnned" )
		

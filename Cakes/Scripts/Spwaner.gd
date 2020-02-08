extends Node2D

export var direction = 0

func _ready():
	pass # Replace with function body.

func spawn( node ):  
	node.direction = direction
	node.position  = position
	get_parent().get_parent().add_child( node )


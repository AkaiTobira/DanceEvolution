extends Node2D

var cakes = [ preload("res://Scenes/Object1.tscn"),
			  preload("res://Scenes/Object2.tscn"),
			  preload("res://Scenes/Object3.tscn"),
			  preload("res://Scenes/Object4.tscn") ]

var speed   = [ 90, 90, 90, 90 ]
var timers  = [0, 0, 0, 0]
var enables = [ 1, 1, 1, 1 ]
var score   =  1

var maxtimer = 100

func _ready():
	pass # Replace with function body.

func _process(delta):
	for i in range(4):
		timers[i] -= delta
		if enables[i] and timers[i] <= 0:
			if randi()% maxtimer != 0: continue  
			timers[i] = 1.3
			var marker    = get_children()[i]
			var cake      = cakes[ randi()%4 ].instance()
			cake.speed    = speed[ randi()%4 ]
			cake.score    = score
			marker.spawn( cake )
		
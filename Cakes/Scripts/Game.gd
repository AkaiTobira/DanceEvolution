extends Node2D

var lives = 3

func _ready():
	invalid = randi()%4
	$Interface/Sprite.frame = invalid
	pass # Replace with function body.

var change = 7.5

var timelist = 0
var score = 0

var invalid = 0

func _process(delta):
	$Interface/Label3.text = "Lives:" + str(lives)
	$Interface/Label.text  = "Score:" + str(score)
	$Interface/Label2.text = "Change in:" + str(change - timelist)
	
	if timelist < change:
		timelist += delta
	else:
		var newe = randi()%4
		while ( newe == invalid ): newe = randi()%4
		invalid  = newe
		timelist = 0
		change   = max(3, change-(randf()/2))
		$Spawners.maxtimer = max( $Spawners.maxtimer - 10, 60 )
		$Interface/Sprite.frame = invalid

	if score > 70: 
		$Spawners.speed   = [ 90, 180, 350, 500 ]
		$Spawners.score   = 4
	elif score > 35: 
		$Spawners.speed   = [ 90, 180, 350, 220 ]
		$Spawners.score   = 3
	elif score > 5: 
		$Spawners.speed   = [ 80, 180, 100, 130 ]
		$Spawners.score   = 2
		
	if lives == 0 : get_tree().reload_current_scene()

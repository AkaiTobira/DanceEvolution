extends Area2D

export var plate_id = 1

func _on_Cake_body_entered(body):	
	if body.name == "Player" :
		body.add_plate(self, plate_id )

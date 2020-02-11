extends Area2D


var dir = Vector2(0,0)
var speed = 10

func _ready():
	speed = randi() % 200 + 60
	if randi()%2 : $CollisionShape2D/AnimationPlayer.play("1")
	else : $CollisionShape2D/AnimationPlayer.play_backwards("1")

func _process(delta):
	position += dir* delta * speed

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.hit()

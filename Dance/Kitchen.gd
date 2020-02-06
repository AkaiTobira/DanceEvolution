extends StaticBody2D

var cake = [ null , preload( "res://Cake.tscn" ), preload( "res://Cake1.tscn" ), preload( "res://Cake2.tscn" ) ]

func spawn( cake_id ):
	var instanc = cake[cake_id].instance()
	instanc.position = Vector2(0, max( 150, 150 + randi()%520 - 300) )
	add_child( instanc )
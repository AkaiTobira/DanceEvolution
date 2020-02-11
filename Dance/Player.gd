extends KinematicBody2D

var iMult    = [ 0, 5, 7.5,  9]
var dMult    = [ 0, 7,  10, 12]

var bSPEED   = [ 7,   5.5,  4,  3]
var cSPEED   = [ 10,  7.5,  6,  4.5]

var eSpeed   = 3

var lives    = 3
var score    = 0

var damaged = 0

var plates    = [0, 0, 0]
var nb_plates = 0 

var directions = { "left"  : { "enabled" : false, "dir" : Vector2(0, -1) },
				   "right" : { "enabled" : false, "dir" : Vector2(0, 1) },
				   "down"  : { "enabled" : false, "dir" : Vector2(-1, 0) },
				   "up"    : { "enabled" : false, "dir" : Vector2(1, 0) } }

func reset():
	get_parent().reset_tables()
	position  = Vector2( 885, 280 )
	nb_plates = 0
	damaged   = 0
	score     = 0
	plates    = [0, 0, 0]

func process_move(delta):
	var enabled = false
	for direction in directions:
		if directions[direction]["enabled"]: 
			enabled = true
			move_and_collide( directions[direction]["dir"] * eSpeed )
			damaged = min( damaged + eSpeed * iMult[nb_plates] * delta, 100 )
			eSpeed = min( eSpeed + 1*delta, cSPEED[nb_plates] )
	if not enabled : 
		damaged = max( 0, damaged - eSpeed * dMult[nb_plates] * delta )
		eSpeed = bSPEED[nb_plates]
	$TextureProgress.value = int( damaged )
	if damaged == 100:
		damaged = 0
		score -= 1
		lost_cake()

func update_cake( node, iindex ):
	match( plates[iindex] ):
		0 : 
			node.visible = false
			return
		1 : node.frame = 0
		2 : node.frame = 2
		3 : node.frame = 3
	node.visible = true

func take_cake( cake_id ):
	print( "Handled",  plates )
	for iid in range(len(plates)):
		if plates[iid] == cake_id: 
			damaged     = 0
			plates[iid] = 0
			score      += 4
			nb_plates  -= 1
			process_cakes( 0 )
			return true
	return false

func hit():
	if lives > 0 : lives -= 1
	else: reset()

func lost_cake():
	if nb_plates > 0:
		var ttt = randi()%3
		while not plates[ ttt ]:
			ttt = randi()%3
		plates[ ttt ] = 0
		nb_plates -=1
		damaged = 0

func process_cakes(delta):
	update_cake( $Sprite2, 0 )
	update_cake( $Sprite3, 1 )
	update_cake( $Sprite4, 2 )

func _process(delta):
	process_move(delta)
	process_cakes(delta)

func add_plate(cake, plate_id ): 
	if nb_plates < 3:
		nb_plates += 1
		if   plates[0] == 0 : plates[0] = plate_id
		elif plates[1] == 0 : plates[1] = plate_id
		elif plates[2] == 0 : plates[2] = plate_id
		cake.queue_free()

func _on_ButtonUp_button_down()   : directions["up"]["enabled"]    = true
func _on_ButtonUp_button_up()     : directions["up"]["enabled"]    = false
func _on_ButtonRight_button_down(): directions["right"]["enabled"] = true
func _on_ButtonRight_button_up()  : directions["right"]["enabled"] = false
func _on_ButtonDown_button_down() : directions["down"]["enabled"]  = true
func _on_ButtonDown_button_up()   : directions["down"]["enabled"]  = false
func _on_ButtonLeft_button_down() : directions["left"]["enabled"]  = true
func _on_ButtonLeft_button_up()   : directions["left"]["enabled"]  = false


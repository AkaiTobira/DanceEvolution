extends StaticBody2D

var required_cake_id = [ 0, 0, 0, 0]
var timers           = [ 0, 0, 0, 0]

var MIMEE = 2000

func reset():
	required_cake_id = [ 0, 0, 0, 0]
	timers           = [ 0, 0, 0, 0]

func update_req(node, iindex):
	if required_cake_id[iindex] == 0: 
		if randi()%MIMEE == 0 :
			required_cake_id[iindex] = randi()%3 + 1
			get_parent().get_parent().cake_list.append( required_cake_id[iindex] )
	set_picture(node, required_cake_id[iindex])

func set_picture(node, iid):
	match(iid):
		0 : 
			node.visible = false
			return
		1 : node.frame = 0
		2 : node.frame = 2
		3 : node.frame = 3
	node.visible = true
	

func update_requirements():
	update_req( $Sprite2, 0)
	update_req( $Sprite3, 1)
	update_req( $Sprite4, 2)
	update_req( $Sprite5, 3)	

func update_timers(delta):
	update_timer( $Sprite2/TextureProgress, delta, 0 )
	update_timer( $Sprite3/TextureProgress, delta, 1 )
	update_timer( $Sprite4/TextureProgress, delta, 2 )
	update_timer( $Sprite5/TextureProgress, delta, 3 )

func update_timer(bar, delta, idd):
	bar.value = 0
	if required_cake_id[idd] == 0: return
	timers[idd] += 5 * delta
	bar.value = int(timers[idd])
	if timers[idd] > 100: 
		required_cake_id[idd] = 0
		timers[idd]           = 0
		get_tree().get_root().find_node("Player", true, false).score -= 1
		update_requirements()

func _process(delta):
	update_requirements()
	update_timers(delta)

func _on_Area2D_body_entered(body):
	print( "Required", required_cake_id )
	if body.name == "Player":
		for idd in range(len(required_cake_id)):
			print( "Required", idd, " ",required_cake_id )
			if required_cake_id[idd] == 0 : continue
			if body.take_cake( required_cake_id[idd] ):
				required_cake_id[idd] = 0
				timers[idd]           = 0

extends Camera2D

var player = get_node_or_null("/root/Game/Player_Container/PlayerScene")

func _process(_delta):
	if player == null:
		player = get_node_or_null("/root/Game/Player_Container/PlayerScene")
	else: 
		position = player.position 

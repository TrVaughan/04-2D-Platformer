extends KinematicBody2D

var start_position = Vector2(16670,-235)
var Player_Container = null
var nav = null

var speed = 250
var s = speed

func _ready():
	position = start_position

func _physics_process(_delta):
	if nav == null:
		nav = get_node_or_null("/root/Game/Navigation2D")
	elif Player_Container == null:
		Player_Container = get_node_or_null("/root/Game/Player_Container/Player")
	else:
		var points = nav.get_simple_path(global_position, Player_Container.global_position, true)
		if points.size()>1:
			var target = points[1] - global_position 
			var direction = target.normalized()
			if target.length() > s:
				s = target.length()
			if abs(s)<1:
				s = 0
			var _v = move_and_slide(direction*s, Vector2.ZERO)

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		queue_free()



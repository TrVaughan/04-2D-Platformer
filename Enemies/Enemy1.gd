extends KinematicBody2D

var start.position = Vector2(3500,600)
var Player_Container = get_node_or_null("/root/Game/Player_Container/Player")

func _ready():
	position = start_position

func _physics_process(_delta):
	


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		queue_free()



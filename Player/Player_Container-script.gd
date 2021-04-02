extends Node2D

onready var PlayerScene = load("res://Player/Player.tscn")
var initial_position = Vector2(200,200)

func _process(_delta):
	if not has_node("PlayerScene"):
		var Player_Instance = PlayerScene.instance()
		Player_Instance.position = initial_position
		Player_Instance.name = "PlayerScene"
		add_child(Player_Instance)
		

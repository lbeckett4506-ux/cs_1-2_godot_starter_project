extends CharacterBody2D
var projectile_original = preload("res://scenes/enemy_projectile.tscn")
var start_time = 2
var timer = start_time
var in_range = false
var player

func _ready():
	
	pass

func _process(delta: float) -> void:
	pass


	


func _on_area_2d_body_entered(body: Node2D) -> void:
	
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	pass # Replace with function body.

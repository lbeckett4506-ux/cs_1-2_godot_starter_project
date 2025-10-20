extends CharacterBody2D
var projectile_original = preload("res://scenes/enemy_projectile.tscn")
var start_time = 2
var timer = start_time
var in_range = false
var player




func _process(delta: float) -> void:
	if in_range:
		timer = delta
	if timer <0:
		shoot(player.position)
		timer = start_time
	
	
	pass


func shoot(target:Vector2):
	# TODO: Create a new projectile instance
	var projectile_clone = projectile_original.instantiate()
	
	# TODO: Set projectile position to player position
	projectile_clone.global_position = position 
	
	# TODO: Set projectile direction using facing variable
	projectile_clone.set_direction(target)
	
	# TODO: Add projectile to the game world
	get_tree().get_root().add_child(projectile_clone)


func _on_area_2d_body_entered(body: Node2D) -> void:
	#if the body is the player
	if body: Node2D == player
	in_range = true
	player = body
	#in_range = true
	#player = body
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	#if the body is the player
	if body: player
	in_range = true
	player = null
	#in_range = true
	#player = null
	pass # Replace with function body.

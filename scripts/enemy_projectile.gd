extends Area2D
var direction 
var speed = 300

func _ready() -> void:
	body_entered.connect(_on_body_entered)
	
func _physics_process(_delta):
	position += direction * speed * _delta
	
	pass	

func _on_body_entered(shoot):
	pass
	
	
	
func set_direction(target : Vector2):
	direction = position.direction_to(target)
	

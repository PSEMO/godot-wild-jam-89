extends Area2D

var speed : float = 300
var direction = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += speed * direction * delta
	
	if direction == 0:
		direction = 1
	
	pass

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

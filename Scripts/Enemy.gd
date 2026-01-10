extends CharacterBody2D
@export var ignoreme : CollisionShape2D
@onready var target = get_node("/root/Node2D/Player")
var speed = 150
var enemyColliding : bool 

func _physics_process(delta: float) -> void:
	var direction=(target.position - position).normalized()
	velocity = direction * speed
	look_at(target.position)
	move_and_slide()
	
	if enemyColliding:
		target.TakeDamage(10 * delta)


func _on_area_2d_body_entered(body: Node2D) -> void:
	#print("Entered:", body.name)
	if body.is_in_group("player"):
		print("hit player")
		enemyColliding = true
	else:
		enemyColliding = false
		
	


func _on_area_2d_area_entered(area: Area2D) -> void:
	pass # Replace with function body.

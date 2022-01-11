extends "res://src/Actors/Actor.gd"

func _ready() -> void:
	velocity.x = -speed.x
	
func _on_Area2D_body_entered(body: Node) -> void:
	queue_free()
	
func _physics_process(delta: float) -> void:
	if is_on_wall():
		velocity.x *= -1.0
	velocity.y = move_and_slide(velocity, FLOOR_NORMAL).y



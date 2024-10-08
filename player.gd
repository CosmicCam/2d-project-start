extends CharacterBody2D

const SPEED = 600

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED
	move_and_slide()

	if direction != Vector2.ZERO:
		$HappyBoo.play_walk_animation()
	else:
		$HappyBoo.play_idle_animation()
		

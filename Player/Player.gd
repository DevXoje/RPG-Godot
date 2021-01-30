extends KinematicBody2D

export var speed: int = 4


func _physics_process(delta):
	var mouvement: Vector2 = Vector2.ZERO

	if Input.is_action_pressed("mover_derecha"):
		mouvement = Vector2(speed, 0)
	if Input.is_action_pressed("mover_izquierda"):
		mouvement = Vector2(-speed, 0)
	if Input.is_action_pressed("mover_arriba"):
		mouvement = Vector2(0, speed)
	if Input.is_action_pressed("mover_abajo"):
		mouvement = Vector2(0, -speed)

	move_and_slide(mouvement)

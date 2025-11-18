extends Node3D

var speed: float = 10.0

func _process(delta: float) -> void:
	translate(Vector3(0, 0, 1) * speed * delta)

extends Node3D

var speed := 20.0

func _process(delta: float) -> void:
	rotate_x(-speed * delta)

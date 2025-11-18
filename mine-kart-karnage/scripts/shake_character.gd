extends Node3D

@export var shake_amplitude: float = 0.03
@export var shake_speed: float = 10.0

var _time := 0.0
var _base_position: Vector3

func _ready() -> void:
	_base_position = position

func _process(delta: float) -> void:
	_time += delta * shake_speed

	var offset_y = sin(_time) * shake_amplitude
	offset_y += randf_range(-shake_amplitude, shake_amplitude) * 0.1

	position = _base_position + Vector3(0, offset_y, 0)

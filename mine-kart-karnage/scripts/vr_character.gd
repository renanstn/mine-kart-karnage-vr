extends XROrigin3D

@export var target: Node3D

func _process(_delta: float) -> void:
	if target:
		var kart = target.get_node("CharacterBody3D")
		self.position.y = kart.position.y - 0.5

extends Camera2D


const DEAD_NAME = 50


func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		var _target = event.position - get_viewport().size * 0.5
		if _target.length() < DEAD_NAME:
			self.position = Vector2(0,0)
		else:
			self.position = _target.normalized() * (_target.length() -  DEAD_NAME) * 0.5

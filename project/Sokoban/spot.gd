extends Area2D

var isActive = false

func _on_spot_body_entered(body):
	if body.is_in_group("box"):
		isActive = true
		
func _on_spot_body_exited(body):
	if body.is_in_group("box"):
		isActive = false

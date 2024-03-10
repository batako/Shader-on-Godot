extends Sprite2D


func _on_item_rect_changed() -> void:
	material.set_shader_parameter("aspect_ratio", scale.y / scale.x)
	print("_on_item_rect_changed")

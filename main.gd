extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D

var amplitude: Vector2


func _ready() -> void:
	amplitude = sprite_2d.material.get_shader_parameter("amplitude")


func _on_amplitude_controller_amplitude_changed(value: Variant) -> void:
	amplitude.x = value
	amplitude.y = value
	sprite_2d.material.set_shader_parameter("amplitude", amplitude)

extends VBoxContainer

signal amplitude_changed(amplitude: float)

@onready var label_start_text: String = $Label.text
@onready var h_slider: HSlider = $HSlider


var amplitude: float = 10.0:
	set(value):
		amplitude = value
		$Label.text = label_start_text + " " + str(amplitude)
		emit_signal("amplitude_changed", value)
	get:
		return amplitude


func _on_h_slider_value_changed(value: float) -> void:
	self.amplitude = value

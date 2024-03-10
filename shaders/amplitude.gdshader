shader_type canvas_item;

uniform float time_factor = 2.0;
uniform vec2 amplitude = vec2(10.0, 5.0);
uniform float alpha = 0.5;

void vertex() {
	// 回転
	//float time = TIME * 2.0 * PI / 10.0;
	//VERTEX += vec2(cos(time)*100.0, sin(time)*100.0);
	
	// 踊り
	VERTEX.x += cos(TIME * time_factor + VERTEX.x + VERTEX.y) * amplitude.x;
	VERTEX.y += sin(TIME * time_factor + VERTEX.y + VERTEX.x) * amplitude.y;
}

void fragment() {
	vec4 input_color = texture(TEXTURE, UV);
	COLOR = vec4(input_color.r, input_color.g, input_color.b, alpha);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}

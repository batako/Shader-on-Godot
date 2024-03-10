shader_type canvas_item;

// 繰り返しと波のパラメータ
uniform vec2 repeat_factor = vec2(1.0, 1.0); // 繰り返し係数
uniform float wave_strength = 0.02; // 波の強さ
uniform float wave_speed = 2.0; // 波の速度
uniform float wave_frequency = 10.0; // 波の頻度

void fragment() {
    // テクスチャのサイズを考慮したUV座標の調整
    vec2 scaled_uv = UV * repeat_factor;

    // 時間による波の変化
    float wave = sin(scaled_uv.y * wave_frequency + TIME * wave_speed) * wave_strength;
    
    // 波をUV座標に適用
    vec2 waved_uv = scaled_uv + vec2(wave, 0.0);

    // 繰り返し処理を考慮
    vec2 tiled_uv = fract(waved_uv);

    // テクスチャのサンプリングと色の適用
    COLOR = texture(TEXTURE, tiled_uv);
}

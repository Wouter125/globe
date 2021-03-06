uniform vec3 colorDay;
uniform vec3 colorNight;

varying vec3 vertexNormal;

void main() {
    float intensity = clamp(0.9 - dot(vertexNormal, vec3(0.0, 0.0, 1.0)), 0.0, 1.0);
    vec3 atmosphere = vec3(0.5, 0.7, 1.0) * pow(intensity, 4.5);

    // Map dropoff to a range of [0.0, 1.0], as the dot product is [-1.0, 1.0]
    float dropoff = dot(vertexNormal.xy, vec2(-1.0, 1.0)) / 2.0 + 0.5;

    vec3 colorDay = colorDay;
    vec3 colorNight = colorNight;

    vec3 color = mix(colorNight, colorDay, smoothstep(0.2, 1.0, dropoff));

    gl_FragColor = vec4(atmosphere + color, 1.0);
}

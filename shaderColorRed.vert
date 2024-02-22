#version 330
layout (location =0) in vec3 pos;
vec3 color = {1.0f, 0.0f, 0.0f};
out vec4 vColor;
uniform mat4 model;
uniform mat4 projection;
void main()
{
	gl_Position=projection*model*vec4(pos,1.0f);
	vColor=vec4(color,1.0f);
}
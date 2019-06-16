#version 330 core
// Atributte 0 of the vertex
layout (location = 0) in vec3 vertexPosition;
// Atributte 1 of the vertex
layout (location = 1) in vec2 vertexTextureCoord;
// Atributte 2 of the vertex
layout (location = 2) in vec3 vertexNormal;

//Uniforms MVP matrix
uniform mat4 MVP;
uniform mat4 Model;
uniform mat4 View;
uniform mat4 Proj;
uniform vec3 lightDir;

uniform vec3 light_pos = vec3(100.0, 100.0, 100.0);
// uniform vec3 light_color = vec3(0.75, 0.75, 0.75);
// uniform vec3 ambient_color = vec3(0.0);

// uniform float ka = 0.00;
// uniform float kd = 0.70;
// uniform float ks = 0.35;
// uniform int n = 32;
// Vertex data out data
out vec4 vColor;
out vec2 texCoord;

out vec3 N1;
out vec3 L1;
out vec3 V1;

void main()
{

    // Calculate view-space coordinate
    vec4 P = View * Model * vec4(vertexPosition, 1.0f);

    // Calculate normal in view space
    N1 = (mat3(View * Model) * vertexNormal);
    
    // Calculate view-space light vector
    L1 = (lightDir);
    // Calculate view vector (simply the negative of the view-space position)
    V1 = (-P.xyz);
    
    
    // Send the color output to the fragment shader
    //color = ambient + diffuse + specular;
    // vColor =  vec4(ambient + diffuse + specular, 1.0f);   
    texCoord = vertexTextureCoord;
    gl_Position = MVP * (vec4(vertexPosition, 1.0f));
}
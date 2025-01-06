#version 330 core

layout (location = 0) in vec4 model_coefficients;
layout (location = 1) in vec4 normal_coefficients;
layout (location = 2) in vec2 texture_coefficients;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform int object_id;

#define SPHERE 0
#define BUNNY  1
#define PLANE  2
#define RACETRACK  3
#define BUILDING  4
#define COIN  5

out vec4 position_world;
out vec4 normal;
out vec4 cor_v;

void main()
{
    // CASO O VERTICE SENDO MAPEADO PERTENÇA AO CARRO OU A MOEDA, SERÁ APENAS MAPEADO
    // PARA QUE OCORRA UMA INTERPOLAÇÃO DE PHONG

    gl_Position = projection * view * model * model_coefficients;
    position_world = model * model_coefficients;
    normal = inverse(transpose(model)) * normal_coefficients;
    normal.w = 0.0;
    

    if (object_id != BUNNY && object_id != COIN) //GOURAND SHADING
    {
        vec4 origin = vec4(0.0, 0.0, 0.0, 1.0);
        vec4 camera_position = inverse(view) * origin;

        vec4 p = position_world;
        vec4 n = normalize(normal);
        vec4 l = normalize(vec4(1.0,1.0,0.5,0.0));
        vec4 v = normalize(camera_position - p);
        vec4 r = -l + 2*n*(dot(n,l));

        vec3 Kd,Ks,Ka;
        float q;

        if (object_id == SPHERE)
        {
            Kd = vec3(0.8, 0.4, 0.08);
            Ks = vec3(0.0, 0.0, 0.0);
            Ka = vec3(0.4, 0.2, 0.04);
            q = 1.0;
        }
        else if (object_id == PLANE)
        {
            Kd = vec3(0.2, 0.2, 0.2);
            Ks = vec3(0.3, 0.3, 0.3);
            Ka = vec3(0.0, 0.0, 0.0);
            q = 20.0;
        }
        else if (object_id == RACETRACK)
        {
            Kd = vec3(1.0, 1.0, 1.0);  // White diffuse color
            Ks = vec3(0.3, 0.3, 0.3);  // Keeping the same specular
            Ka = vec3(0.1, 0.1, 0.1);  // Slight white ambient
            q = 20.0;
        }
        else if (object_id == BUILDING)
        {
            Kd = vec3(1.0, 1.0, 0.0);  // Yellow diffuse color
            Ks = vec3(0.3, 0.3, 0.3);  // Keeping the same specular
            Ka = vec3(0.2, 0.2, 0.0);  // Slight yellow ambient
            q = 20.0;
        }
        else
        {
            Kd = vec3(0.0,0.0,0.0);
            Ks = vec3(0.0,0.0,0.0);
            Ka = vec3(0.0,0.0,0.0);
            q = 1.0;
        }


        // TUDO QUE ESTÁ SENDO INTERPOLADO USANDO GOURAUD, UTILIZARÁ LAMBERT PARA A ILUMINAÇÃO
        // E TUDO QUE FOR INTERPOLADO USANDO PHONG, UTILIZARÁ BLINN-PHONG PARA A ILUMINAÇÃO
        vec3 I = vec3(1.0,1.0,1.0); 
        vec3 Ia = vec3(0.2,0.2,0.2);
        vec3 lambert_diffuse_term = Kd * I * max(0, dot(n,l)); 
        vec3 ambient_term = Ka * Ia;

        cor_v = vec4(0.0,0.0,0.0,1.0);
        cor_v.a = 1;
        cor_v.rgb = lambert_diffuse_term + ambient_term; // Calcula iluminação de Lambert
    }
}

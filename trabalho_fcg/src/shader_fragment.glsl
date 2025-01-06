#version 330 core

// Constantes
#define M_PI   3.14159265358979323846
#define M_PI_2 1.57079632679489661923

in vec4 position_world;
in vec4 normal;
in vec4 cor_v;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

#define SPHERE 0
#define BUNNY  1
#define PLANE  2
#define RACETRACK  3
#define BUILDING  4
#define COIN  5

uniform int object_id;

// Parâmetros da axis-aligned bounding box (AABB) do modelo
uniform vec4 bbox_min;
uniform vec4 bbox_max;

//uniform sampler2D TextureImage0; // SPHERE
uniform sampler2D TextureImage1; // CAR
// uniform sampler2D TextureImage2; // PLANE
// uniform sampler2D TextureImage3; // RACETRACK
// uniform sampler2D TextureImage4; // BUILDING
uniform sampler2D TextureImage5; // COIN


// MAPEAMENTO DE TEXTURAS

vec2 computeSphericalTextureCoords(vec4 position_model, vec4 bbox_min, vec4 bbox_max)
{
    vec4 bbox_center = (bbox_min + bbox_max) / 2.0;
    float radius = 1.0;
    vec4 p_linha = bbox_center + (radius * ((position_model - bbox_center) / length(position_model - bbox_center)));
    vec4 vector_p = p_linha - bbox_center;
    float theta = atan(vector_p.x, vector_p.z);
    float phi = asin(vector_p.y / radius);
    float U = (theta + M_PI) / (2.0 * M_PI);
    float V = (phi + M_PI_2) / M_PI;
    return vec2(U, V);
}

vec2 computeCubeTextureCoords(vec4 position_model, vec4 bbox_min, vec4 bbox_max)
{
    vec4 bbox_center = (bbox_min + bbox_max) / 2.0;
    vec4 p_linha = position_model - bbox_center;
    float U, V;

    if (abs(p_linha.x) >= abs(p_linha.y) && abs(p_linha.x) >= abs(p_linha.z))
    {
        U = (p_linha.z / abs(p_linha.x) + 1.0) / 2.0;
        V = (p_linha.y / abs(p_linha.x) + 1.0) / 2.0;
    } 
    else if (abs(p_linha.y) >= abs(p_linha.x) && abs(p_linha.y) >= abs(p_linha.z))
    {
        U = (p_linha.x / abs(p_linha.y) + 1.0) / 2.0;
        V = (p_linha.z / abs(p_linha.y) + 1.0) / 2.0;
    }
    else
    {
        U = (p_linha.x / abs(p_linha.z) + 1.0) / 2.0;
        V = (p_linha.y / abs(p_linha.z) + 1.0) / 2.0;
    }
    return vec2(U, V);
}

vec2 computePlanarTextureCoords(vec4 position_model, vec4 bbox_min, vec4 bbox_max)
{
    float U = (position_model.x - bbox_min.x) / (bbox_max.x - bbox_min.x);
    float V = (position_model.y - bbox_min.y) / (bbox_max.y - bbox_min.y);
    return vec2(U, V);
}

out vec4 color;

void main()
{
    color = vec4(1.0,0.0,0.0,1.0);

    // TEXTURAS

    vec2 texCoords;

    if (object_id == BUNNY)
    {
        texCoords = computePlanarTextureCoords(position_model, bbox_min, bbox_max);
    }
    else if (object_id == COIN)
    {
        texCoords = computeSphericalTextureCoords(position_model,bbbox_min,bbbox_max);
    }
    else
    {
        texCoords = texcoords;
    }

    // INTERPOLAÇÃO E ILUMINAÇÃO

    if(object_id == BUNNY || object_id == COIN) //INTERPOLAÇÃO DE PHONG
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

        float U = 0.0;
        float V = 0.0;

        if (object_id == BUNNY)
        {
           // Kd = vec3(0.08,0.4,0.8);
            Kd = texture(TextureImage1, texCoords).rgb
            Ks = vec3(0.8,0.8,0.8);
            Ka = vec3(0.04,0.2,0.4);
            q = 32.0;
        }
        else if (object_id == COIN)
        {
           // Kd = vec3(255.0,215,0.0);
            Kd = texture(TextureImage5, texCoords).rgb
            Ks = vec3(0.3,0.3,0.3);
            Ka = vec3(0.0,0.0,0.0);
            q = 20.0;
        }
        else
        {
            Kd = vec3(0.0,0.0,0.0);
            Ks = vec3(0.0,0.0,0.0);
            Ka = vec3(0.0,0.0,0.0);
            q = 1.0;
        }

        vec3 I = vec3(1.0,1.0,1.0); 
        vec3 Ia = vec3(0.2,0.2,0.2);
        vec3 lambert_diffuse_term = Kd * I * max(0, dot(n,l)); 
        vec3 ambient_term = Ka * Ia; 
        vec3 phong_specular_term  = Ks * I * pow(max(0, dot(r,v)), q); 

        color.a = 1;

        if(object_id == BUNNY || object_id == COIN) // Iluminação Phong
        {
            color.rgb = lambert_diffuse_term + ambient_term + phong_specular_term;
        }
    }
    else // INTERPOLAÇÃO DE GOURAUD
    {
        color = cor_v;
        color.rgb = pow(color.rgb, vec3(1.0,1.0,1.0)/2.2);
    }
}

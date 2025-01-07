#version 330 core

in vec4 position_world;
in vec4 normal;
in vec4 position_model;
in vec2 texcoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

#define BUNNY  0
#define COIN  1
#define PLANE  2
#define RACETRACK  3
#define BUILDING  4
#define CAR 5

uniform int object_id;

uniform vec4 bbox_min;
uniform vec4 bbox_max;

uniform sampler2D TextureImage0; // BUNNY
uniform sampler2D TextureImage1; // COIN
uniform sampler2D TextureImage2; // PLANE
uniform sampler2D TextureImage3; // RACETRACK
uniform sampler2D TextureImage4; // BUILDING

out vec4 color;

#define M_PI   3.14159265358979323846
#define M_PI_2 1.57079632679489661923

vec2 coordenadasEsfericas(vec4 position_model, vec4 bbox_min, vec4 bbox_max) {
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

vec2 coordenadasPlanaresXY(vec4 position_model, vec4 bbox_min, vec4 bbox_max) {
    float U = (position_model.x - bbox_min.x) / (bbox_max.x - bbox_min.x);
    float V = (position_model.y - bbox_min.y) / (bbox_max.y - bbox_min.y);
    return vec2(U, V);
}

vec2 coordenadasPlanaresXZ(vec4 position_model, vec4 bbox_min, vec4 bbox_max) {
    float U = (position_model.x - bbox_min.x) / (bbox_max.x - bbox_min.x);
    float V = (position_model.z - bbox_min.z) / (bbox_max.z - bbox_min.z);
    return vec2(U, V);
}

void main()
{
    vec4 origin = vec4(0.0, 0.0, 0.0, 1.0);
    vec4 camera_position = inverse(view) * origin;

    vec4 p = position_world;

    vec4 n = normalize(normal);

    vec4 l = normalize(vec4(0.0, 1.0, 0.0, 0.0));
    vec4 r = normalize(reflect(-l, n));
    vec4 v = normalize(camera_position - p);

    vec2 local_texcoords;

    vec3 Kd, Ks, Ka;
    float q;

    if (object_id == BUNNY)
    {
        local_texcoords = coordenadasPlanares(position_model, bbox_min, bbox_max);
        Kd = texture(TextureImage0, local_texcoords).rgb;
        Ks = vec3(0.8, 0.8, 0.8);
        Ka = vec3(0.5, 0.5, 0.5);
        q = 32.0;
    } else if (object_id == COIN) 
    {
        local_texcoords = coordenadasPlanares(position_model, bbox_min, bbox_max);
        Kd = texture(TextureImage1, local_texcoords).rgb;
        Ks = vec3(0.2, 0.2, 0.5);
        Ka = vec3(0.5, 0.5, 0.5);
        q = 50.0;
    } 
    else if (object_id == PLANE) 
    {
        local_texcoords = texcoords;
        Kd = texture(TextureImage2, local_texcoords).rgb;
        Ks = vec3(0.3, 0.3, 0.3);
        Ka = vec3(0.5, 0.5, 0.5);
        q = 20.0;
    } 
    else if (object_id == RACETRACK) 
    {
        local_texcoords = coordenadasPlanares(position_model, bbox_min, bbox_max);
        Kd = texture(TextureImage3, local_texcoords).rgb;
        Ks = vec3(0.3, 0.3, 0.3);
        Ka = vec3(0.5, 0.5, 0.5);
        q = 20.0;
    } 
    else if (object_id == BUILDING) 
    {
        local_texcoords = coordenadasPlanares(position_model, bbox_min, bbox_max);
        Kd = texture(TextureImage4, local_texcoords).rgb;
        Ks = vec3(0.3, 0.3, 0.3);
        Ka = vec3(0.5, 0.5, 0.5);
        q = 20.0;
    } else 
    {
        Kd = vec3(0.0, 0.0, 0.0);
        Ks = vec3(0.0, 0.0, 0.0);
        Ka = vec3(0.0, 0.0, 0.0);
        q = 1.0;
    }
/*
    vec3 Ia = vec3(0.2,0.2,0.2);
    vec3 ambient = Ka * Ia;

    float lambert = max(0.0, dot(n, l));
    vec3 I = vec3(1.0,1.0,1.0);
    vec3 diffuse = Kd * I * (lambert + ambient);

    vec4 h = normalize(v + l);
    float spec = pow(max(dot(n, h), 0.0), q);
    vec3 specular = Ks * spec;

    if (object_id == BUNNY || object_id == COIN) {
        color.rgb = diffuse + ambient + specular;
        color.rgb = pow(color.rgb, vec3(1.0 / 2.2));
    } else {
        color.rgb = diffuse + ambient;
        color.rgb = pow(color.rgb, vec3(1.0 / 2.2));
    }
*/
float lambert = max(0,dot(n,l));
color.rgb = Kd * (lambert + 0.01);
color.a = 1;
color.rgb = pow(color.rgb, vec3(1.0,1.0,1.0)/2.2);
}
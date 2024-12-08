#include <glm/mat4x4.hpp>
#include <glm/vec4.hpp>
#include <glm/gtc/type_ptr.hpp>

struct Car
{
    glm::vec4   position;
    glm::vec4   direction = glm::vec4 (0.0f, 0.0f, 0.0f, 0.0f);
    glm::vec4   direction_dash = glm::vec4 (0.0f, 0.0f, 0.0f, 0.0f);
    float       gravity = -4.0;
    float       velocity = 1.0;
};

struct Box
{
    glm::vec4   position;
    glm::vec4   direction;
    float       height;
    float       width;
    float       length;
    bool        status = true;
    int         level;
    Box (glm::vec4 p, glm::vec4 d, float h, float w, float l, int l2){
        position = p;
        direction = d;
        height = h;
        width = w;
        length  = l;
        status = true;
        level = l2;
    }
};


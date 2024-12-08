#include <glm/mat4x4.hpp>
#include <glm/vec4.hpp>
#include <glm/gtc/type_ptr.hpp>

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


Box planes[] =  {Box(glm::vec4 (0.0f,2.5f,0.0f,1.0f), glm::vec4 (0.0f, 1.0f, 0.0f, 0.0f), 1.0, 2.5, 2.5, 0),
                Box(glm::vec4 (0.0f,8.0f,-28.0f,1.0f), glm::vec4 (0.0f, 1.0f, 0.0f, 0.0f), 1.0, 2.0, 2.0, 0)};

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
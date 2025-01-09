#include <glm/mat4x4.hpp>
#include <glm/vec4.hpp>
#include <glm/gtc/type_ptr.hpp>

struct Car
{
    glm::vec4   position;
    glm::vec4   direction = glm::vec4 (1.0f, 0.0f, 0.0f, 0.0f); // para onde o carro está apontando
    float       gravity = -4.0;
    float       velocity = 1.0;
    float       acceleration = 0.0f;
    float       steering_angle = 0.0f; // é o que altera o vetor direction para mudar a direção do carro.
    int         coins = 0;
    int         score = 0;

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
    Box (glm::vec4 p, glm::vec4 d, float h, float w, float l){
        position = p;
        direction = d;
        height = h;
        width = w;
        length  = l;
        status = true;
    }
};


Box planes[] =  {Box(glm::vec4 (-22.0f,-1.0f,25.0f,1.0f), glm::vec4 (0.0f, 1.0f, 0.0f, 0.0f), 1.0, 25.0, 50.0)};

Box cubes[] =   {Box(glm::vec4 (-22.0f, -1.0f, 25.0f, 1.0f), glm::vec4 (0.0f, 1.0f, 0.0f, 0.0f), 10.0, 2.5, 3.5)};

Box coins[] =  {Box(glm::vec4 (-22.0f, -1.0f, -20.0f, 1.0f), glm::vec4 (0.0f, 1.0f, 0.0f, 0.0f), 5.0, 1.0, 1.0),
                Box(glm::vec4 (-22.0f, -1.0f, 70.0f, 1.0f), glm::vec4 (0.0f, 1.0f, 0.0f, 0.0f), 5.0, 1.0, 1.0),
                Box(glm::vec4 (0.0f, -1.0f, 25.0f, 1.0f), glm::vec4 (0.0f, 1.0f, 0.0f, 0.0f), 5.0, 1.0, 1.0),
                Box(glm::vec4 (-42.0f, -1.0f, 25.0f, 1.0f), glm::vec4 (0.0f, 1.0f, 0.0f, 0.0f), 5.0, 1.0, 1.0)};
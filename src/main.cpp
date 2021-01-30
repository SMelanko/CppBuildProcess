#include "Greeting.h"

#include <iostream>

int main(int argc, char const *argv[])
{
    app::Greeting greeting;
    std::cout << greeting.getMessage() << std::endl;

    return 0;
}

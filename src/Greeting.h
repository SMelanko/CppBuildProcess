#pragma once

#include "Utils.h"

#include <string>

namespace app {

class Greeting
{
public:
    Greeting() noexcept = default;
    ~Greeting() noexcept = default;

    NON_COPYABLE_NOR_MOVABLE(Greeting)

    std::string getMessage() const;
};

} // namespace app

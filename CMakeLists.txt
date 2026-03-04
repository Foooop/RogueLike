cmake_minimum_required(VERSION 3.20)
project(Roguelike)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use Conan for raylib
list(APPEND CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR})
find_package(raylib REQUIRED)

# Fetch raylib-cpp from GitHub
include(FetchContent)
FetchContent_Declare(
    raylib-cpp
    GIT_REPOSITORY https://github.com/RobLoach/raylib-cpp.git
    GIT_TAG v5.5.0
)
FetchContent_MakeAvailable(raylib-cpp)

add_executable(Roguelike src/main.cpp)
target_link_libraries(Roguelike raylib)
target_include_directories(Roguelike PRIVATE ${raylib-cpp_SOURCE_DIR}/include)
#include "main.hpp"
#include <raylib-cpp.hpp>
#include <raylib.h>

int main()
{
  raylib::Window window(1280, 720, "Roguelike");
  SetTargetFPS(60);
  
  while (!window.ShouldClose())
  {
    BeginDrawing();
    window.ClearBackground(RAYWHITE);
    DrawText("Hello, Roguelike!", 190, 200, 20, LIGHTGRAY);
    EndDrawing();
  }
  return 0;
}
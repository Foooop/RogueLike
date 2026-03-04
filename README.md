# Roguelike

A C++ roguelike game using raylib.

## Prerequisites

Before building, install:
- [CMake](https://cmake.org/download/) (3.20 or higher)
- [Conan](https://conan.io/download) (2.x)
- A C++ compiler (MSVC on Windows, GCC/Clang on Linux/Mac)

## Building

1. **Install dependencies via Conan:**
   ```bash
   conan install . --build=missing
   ```

2. **Configure with CMake:**
   ```bash
   cmake -B build -DCMAKE_TOOLCHAIN_FILE="conan_toolchain.cmake"
   ```

3. **Build:**
   ```bash
   cmake --build build --config Release
   ```

4. **Run:**
   ```bash
   ./build/Release/Roguelike.exe  # Windows
   ./build/Roguelike              # Linux/Mac
   ```

## Project Structure

- `src/` - Source code
- `CMakeLists.txt` - CMake build configuration
- `conanfile.txt` - Conan dependency management
- `build/` - Generated build files (gitignored)

## Notes

- Dependencies are automatically downloaded by Conan from ConanCenter
- raylib-cpp headers are automatically fetched during CMake configuration via FetchContent
- All build artifacts are generated and not committed to git

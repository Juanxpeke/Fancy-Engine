cmake_minimum_required(VERSION 3.10)
project(Fancy-Engine)

set(CMAKE_CXX_STANDARD 20)

add_executable(vulktut src/main.cpp)

find_package(Vulkan REQUIRED)
target_include_directories(${PROJECT_NAME} PUBLIC ${Vulkan_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} Vulkan::Vulkan)

add_subdirectory(Third-Party)
add_subdirectory(Examples)
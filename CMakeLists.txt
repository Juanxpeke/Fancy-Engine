cmake_minimum_required(VERSION 3.10)
project(Fancy-Engine)

set(CMAKE_CXX_STANDARD 20)

find_package(Vulkan REQUIRED)

set(THIRD_PARTY_INCLUDE_DIRECTORIES
    ${Vulkan_INCLUDE_DIRS}
    ${CMAKE_CURRENT_SOURCE_DIR}/Third-Party/glfw/include
    ${CMAKE_CURRENT_SOURCE_DIR}/Third-Party/glm)

set(THIRD_PARTY_LIBRARIES glfw Vulkan::Vulkan)

set(FANCY_INCLUDE_DIRECTORY
  ${CMAKE_CURRENT_SOURCE_DIR}/source)

add_subdirectory(Third-Party)
add_subdirectory(Examples)
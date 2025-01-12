define_property(
    TARGET
    PROPERTY FOLDER
    INHERITED
    BRIEF_DOCS "Set the folder name."
    FULL_DOCS  "Use to organize targets in an IDE.")

function(add_subdirectory_with_folder FOLDER_NAME SUBDIRECTORY_NAME)
    add_subdirectory(${SUBDIRECTORY_NAME} ${ARGN})
    set_property(DIRECTORY ${SUBDIRECTORY_NAME} PROPERTY FOLDER ${FOLDER_NAME})
endfunction(add_subdirectory_with_folder)

add_subdirectory_with_folder(Third-Party glfw)
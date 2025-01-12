function(add_example TARGET_NAME)
	add_executable(${TARGET_NAME} ${TARGET_NAME}.cpp)

	set_property(TARGET ${TARGET_NAME} PROPERTY CXX_STANDARD 20)
	set_property(TARGET ${TARGET_NAME} PROPERTY FOLDER Examples)

	target_link_libraries(${TARGET_NAME} PRIVATE ${THIRD_PARTY_LIBRARIES})
	target_include_directories(${TARGET_NAME} PRIVATE ${FANCY_INCLUDE_DIRECTORY} ${THIRD_PARTY_INCLUDE_DIRECTORIES})
endfunction(add_example)

add_example(Main)

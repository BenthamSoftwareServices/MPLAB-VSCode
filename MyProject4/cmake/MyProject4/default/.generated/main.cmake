include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(MyProject4_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(MyProject4_default_default_XC8_FILE_TYPE_assemble)
add_library(MyProject4_default_default_XC8_assemble OBJECT ${MyProject4_default_default_XC8_FILE_TYPE_assemble})
    MyProject4_default_default_XC8_assemble_rule(MyProject4_default_default_XC8_assemble)
    list(APPEND MyProject4_default_library_list "$<TARGET_OBJECTS:MyProject4_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(MyProject4_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(MyProject4_default_default_XC8_assemblePreprocess OBJECT ${MyProject4_default_default_XC8_FILE_TYPE_assemblePreprocess})
    MyProject4_default_default_XC8_assemblePreprocess_rule(MyProject4_default_default_XC8_assemblePreprocess)
    list(APPEND MyProject4_default_library_list "$<TARGET_OBJECTS:MyProject4_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(MyProject4_default_default_XC8_FILE_TYPE_compile)
add_library(MyProject4_default_default_XC8_compile OBJECT ${MyProject4_default_default_XC8_FILE_TYPE_compile})
    MyProject4_default_default_XC8_compile_rule(MyProject4_default_default_XC8_compile)
    list(APPEND MyProject4_default_library_list "$<TARGET_OBJECTS:MyProject4_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(MyProject4_default_image_cAtcTWAk ${MyProject4_default_library_list})

set_target_properties(MyProject4_default_image_cAtcTWAk PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${MyProject4_default_output_dir}")
target_link_libraries(MyProject4_default_image_cAtcTWAk PRIVATE ${MyProject4_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
MyProject4_default_link_rule( MyProject4_default_image_cAtcTWAk)



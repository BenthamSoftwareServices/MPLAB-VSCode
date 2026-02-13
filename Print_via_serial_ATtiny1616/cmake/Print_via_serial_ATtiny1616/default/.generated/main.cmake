include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(Print_via_serial_ATtiny1616_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(Print_via_serial_ATtiny1616_default_default_XC8_FILE_TYPE_assemble)
add_library(Print_via_serial_ATtiny1616_default_default_XC8_assemble OBJECT ${Print_via_serial_ATtiny1616_default_default_XC8_FILE_TYPE_assemble})
    Print_via_serial_ATtiny1616_default_default_XC8_assemble_rule(Print_via_serial_ATtiny1616_default_default_XC8_assemble)
    list(APPEND Print_via_serial_ATtiny1616_default_library_list "$<TARGET_OBJECTS:Print_via_serial_ATtiny1616_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(Print_via_serial_ATtiny1616_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(Print_via_serial_ATtiny1616_default_default_XC8_assemblePreprocess OBJECT ${Print_via_serial_ATtiny1616_default_default_XC8_FILE_TYPE_assemblePreprocess})
    Print_via_serial_ATtiny1616_default_default_XC8_assemblePreprocess_rule(Print_via_serial_ATtiny1616_default_default_XC8_assemblePreprocess)
    list(APPEND Print_via_serial_ATtiny1616_default_library_list "$<TARGET_OBJECTS:Print_via_serial_ATtiny1616_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(Print_via_serial_ATtiny1616_default_default_XC8_FILE_TYPE_compile)
add_library(Print_via_serial_ATtiny1616_default_default_XC8_compile OBJECT ${Print_via_serial_ATtiny1616_default_default_XC8_FILE_TYPE_compile})
    Print_via_serial_ATtiny1616_default_default_XC8_compile_rule(Print_via_serial_ATtiny1616_default_default_XC8_compile)
    list(APPEND Print_via_serial_ATtiny1616_default_library_list "$<TARGET_OBJECTS:Print_via_serial_ATtiny1616_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(Print_via_serial_ATtiny1616_default_image_LGuqxJWj ${Print_via_serial_ATtiny1616_default_library_list})

set_target_properties(Print_via_serial_ATtiny1616_default_image_LGuqxJWj PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${Print_via_serial_ATtiny1616_default_output_dir}")
target_link_libraries(Print_via_serial_ATtiny1616_default_image_LGuqxJWj PRIVATE ${Print_via_serial_ATtiny1616_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
Print_via_serial_ATtiny1616_default_link_rule( Print_via_serial_ATtiny1616_default_image_LGuqxJWj)



include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(AtTiny1616_uart_example_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(AtTiny1616_uart_example_default_default_XC8_FILE_TYPE_assemble)
add_library(AtTiny1616_uart_example_default_default_XC8_assemble OBJECT ${AtTiny1616_uart_example_default_default_XC8_FILE_TYPE_assemble})
    AtTiny1616_uart_example_default_default_XC8_assemble_rule(AtTiny1616_uart_example_default_default_XC8_assemble)
    list(APPEND AtTiny1616_uart_example_default_library_list "$<TARGET_OBJECTS:AtTiny1616_uart_example_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(AtTiny1616_uart_example_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(AtTiny1616_uart_example_default_default_XC8_assemblePreprocess OBJECT ${AtTiny1616_uart_example_default_default_XC8_FILE_TYPE_assemblePreprocess})
    AtTiny1616_uart_example_default_default_XC8_assemblePreprocess_rule(AtTiny1616_uart_example_default_default_XC8_assemblePreprocess)
    list(APPEND AtTiny1616_uart_example_default_library_list "$<TARGET_OBJECTS:AtTiny1616_uart_example_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(AtTiny1616_uart_example_default_default_XC8_FILE_TYPE_compile)
add_library(AtTiny1616_uart_example_default_default_XC8_compile OBJECT ${AtTiny1616_uart_example_default_default_XC8_FILE_TYPE_compile})
    AtTiny1616_uart_example_default_default_XC8_compile_rule(AtTiny1616_uart_example_default_default_XC8_compile)
    list(APPEND AtTiny1616_uart_example_default_library_list "$<TARGET_OBJECTS:AtTiny1616_uart_example_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(AtTiny1616_uart_example_default_image_le3IoP7Z ${AtTiny1616_uart_example_default_library_list})

set_target_properties(AtTiny1616_uart_example_default_image_le3IoP7Z PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${AtTiny1616_uart_example_default_output_dir}")
target_link_libraries(AtTiny1616_uart_example_default_image_le3IoP7Z PRIVATE ${AtTiny1616_uart_example_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
AtTiny1616_uart_example_default_link_rule( AtTiny1616_uart_example_default_image_le3IoP7Z)



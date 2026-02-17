include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(Flash_LED_bare_metal_TCB0_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemble)
add_library(Flash_LED_bare_metal_TCB0_default_default_XC8_assemble OBJECT ${Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemble})
    Flash_LED_bare_metal_TCB0_default_default_XC8_assemble_rule(Flash_LED_bare_metal_TCB0_default_default_XC8_assemble)
    list(APPEND Flash_LED_bare_metal_TCB0_default_library_list "$<TARGET_OBJECTS:Flash_LED_bare_metal_TCB0_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(Flash_LED_bare_metal_TCB0_default_default_XC8_assemblePreprocess OBJECT ${Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemblePreprocess})
    Flash_LED_bare_metal_TCB0_default_default_XC8_assemblePreprocess_rule(Flash_LED_bare_metal_TCB0_default_default_XC8_assemblePreprocess)
    list(APPEND Flash_LED_bare_metal_TCB0_default_library_list "$<TARGET_OBJECTS:Flash_LED_bare_metal_TCB0_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_compile)
add_library(Flash_LED_bare_metal_TCB0_default_default_XC8_compile OBJECT ${Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_compile})
    Flash_LED_bare_metal_TCB0_default_default_XC8_compile_rule(Flash_LED_bare_metal_TCB0_default_default_XC8_compile)
    list(APPEND Flash_LED_bare_metal_TCB0_default_library_list "$<TARGET_OBJECTS:Flash_LED_bare_metal_TCB0_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(Flash_LED_bare_metal_TCB0_default_image_P_vWKfqx ${Flash_LED_bare_metal_TCB0_default_library_list})

set_target_properties(Flash_LED_bare_metal_TCB0_default_image_P_vWKfqx PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${Flash_LED_bare_metal_TCB0_default_output_dir}")
target_link_libraries(Flash_LED_bare_metal_TCB0_default_image_P_vWKfqx PRIVATE ${Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
Flash_LED_bare_metal_TCB0_default_link_rule( Flash_LED_bare_metal_TCB0_default_image_P_vWKfqx)



include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(MCC_Test_3_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(MCC_Test_3_default_default_XC8_FILE_TYPE_assemble)
add_library(MCC_Test_3_default_default_XC8_assemble OBJECT ${MCC_Test_3_default_default_XC8_FILE_TYPE_assemble})
    MCC_Test_3_default_default_XC8_assemble_rule(MCC_Test_3_default_default_XC8_assemble)
    list(APPEND MCC_Test_3_default_library_list "$<TARGET_OBJECTS:MCC_Test_3_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(MCC_Test_3_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(MCC_Test_3_default_default_XC8_assemblePreprocess OBJECT ${MCC_Test_3_default_default_XC8_FILE_TYPE_assemblePreprocess})
    MCC_Test_3_default_default_XC8_assemblePreprocess_rule(MCC_Test_3_default_default_XC8_assemblePreprocess)
    list(APPEND MCC_Test_3_default_library_list "$<TARGET_OBJECTS:MCC_Test_3_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(MCC_Test_3_default_default_XC8_FILE_TYPE_compile)
add_library(MCC_Test_3_default_default_XC8_compile OBJECT ${MCC_Test_3_default_default_XC8_FILE_TYPE_compile})
    MCC_Test_3_default_default_XC8_compile_rule(MCC_Test_3_default_default_XC8_compile)
    list(APPEND MCC_Test_3_default_library_list "$<TARGET_OBJECTS:MCC_Test_3_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(MCC_Test_3_default_image_Sbe4hQ0F ${MCC_Test_3_default_library_list})

set_target_properties(MCC_Test_3_default_image_Sbe4hQ0F PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${MCC_Test_3_default_output_dir}")
target_link_libraries(MCC_Test_3_default_image_Sbe4hQ0F PRIVATE ${MCC_Test_3_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
MCC_Test_3_default_link_rule( MCC_Test_3_default_image_Sbe4hQ0F)



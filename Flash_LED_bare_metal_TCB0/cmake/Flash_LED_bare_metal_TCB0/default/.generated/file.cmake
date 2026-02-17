# The following variables contains the files used by the different stages of the build process.
set(Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemble)
set_source_files_properties(${Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemble})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemblePreprocess "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/mcc/mcc_generated_files/system/src/protected_io.S")
set_source_files_properties(${Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemblePreprocess} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_assemblePreprocess})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/mcc/main.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/mcc/mcc_generated_files/system/src/clock.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/mcc/mcc_generated_files/system/src/config_bits.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/mcc/mcc_generated_files/system/src/interrupt.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/mcc/mcc_generated_files/system/src/pins.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/mcc/mcc_generated_files/system/src/system.c")
set_source_files_properties(${Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(Flash_LED_bare_metal_TCB0_default_default_XC8_FILE_TYPE_link)
set(Flash_LED_bare_metal_TCB0_default_image_name "default.elf")
set(Flash_LED_bare_metal_TCB0_default_image_base_name "default")

# The output directory of the final image.
set(Flash_LED_bare_metal_TCB0_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/Flash_LED_bare_metal_TCB0")

# The full path to the final image.
set(Flash_LED_bare_metal_TCB0_default_full_path_to_image ${Flash_LED_bare_metal_TCB0_default_output_dir}/${Flash_LED_bare_metal_TCB0_default_image_name})

# Potential output file extensions
set(output_extensions
    .hex
    .hxl
    .mum
    .o
    .sdb
    .sym
    .cmf)
list(TRANSFORM output_extensions PREPEND "${Flash_LED_bare_metal_TCB0_default_output_dir}/${Flash_LED_bare_metal_TCB0_default_image_base_name}")

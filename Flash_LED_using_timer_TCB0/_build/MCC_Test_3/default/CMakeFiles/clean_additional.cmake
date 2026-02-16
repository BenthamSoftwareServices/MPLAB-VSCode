# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Flash_LED_using_timer_TCB0\\out\\MCC_Test_3\\default.cmf"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Flash_LED_using_timer_TCB0\\out\\MCC_Test_3\\default.hex"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Flash_LED_using_timer_TCB0\\out\\MCC_Test_3\\default.hxl"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Flash_LED_using_timer_TCB0\\out\\MCC_Test_3\\default.mum"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Flash_LED_using_timer_TCB0\\out\\MCC_Test_3\\default.o"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Flash_LED_using_timer_TCB0\\out\\MCC_Test_3\\default.sdb"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Flash_LED_using_timer_TCB0\\out\\MCC_Test_3\\default.sym"
  )
endif()

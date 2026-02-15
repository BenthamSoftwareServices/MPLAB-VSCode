# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\AtTiny1616_uart_example\\out\\AtTiny1616_uart_example\\default.cmf"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\AtTiny1616_uart_example\\out\\AtTiny1616_uart_example\\default.hex"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\AtTiny1616_uart_example\\out\\AtTiny1616_uart_example\\default.hxl"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\AtTiny1616_uart_example\\out\\AtTiny1616_uart_example\\default.mum"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\AtTiny1616_uart_example\\out\\AtTiny1616_uart_example\\default.o"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\AtTiny1616_uart_example\\out\\AtTiny1616_uart_example\\default.sdb"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\AtTiny1616_uart_example\\out\\AtTiny1616_uart_example\\default.sym"
  )
endif()

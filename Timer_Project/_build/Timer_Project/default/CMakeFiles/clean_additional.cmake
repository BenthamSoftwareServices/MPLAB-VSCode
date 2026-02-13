# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Timer_Project\\out\\Timer_Project\\default.cmf"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Timer_Project\\out\\Timer_Project\\default.hex"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Timer_Project\\out\\Timer_Project\\default.hxl"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Timer_Project\\out\\Timer_Project\\default.mum"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Timer_Project\\out\\Timer_Project\\default.o"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Timer_Project\\out\\Timer_Project\\default.sdb"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\Timer_Project\\out\\Timer_Project\\default.sym"
  )
endif()

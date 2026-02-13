# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\MyProject4\\out\\MyProject4\\default.cmf"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\MyProject4\\out\\MyProject4\\default.hex"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\MyProject4\\out\\MyProject4\\default.hxl"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\MyProject4\\out\\MyProject4\\default.mum"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\MyProject4\\out\\MyProject4\\default.o"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\MyProject4\\out\\MyProject4\\default.sdb"
  "E:\\Users\\Steven\\Documents\\GitHub\\MPLAB-VSCode\\MyProject4\\out\\MyProject4\\default.sym"
  )
endif()

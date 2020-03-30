# TCL File Generated by Component Editor 18.0
# Mon Mar 30 07:10:45 MDT 2020
# DO NOT MODIFY


# 
# bme280_i2c "bme280_i2c" v1.0
#  2020.03.30.07:10:45
# Reads temperature, humidity, and pressure values from BME280 over i2c
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module bme280_i2c
# 
set_module_property DESCRIPTION "Reads temperature, humidity, and pressure values from BME280 over i2c"
set_module_property NAME bme280_i2c
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME bme280_i2c
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL FE_BME280_v1
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file FE_BME280_v1.vhd VHDL PATH FE_BME280_v1.vhd TOP_LEVEL_FILE
add_fileset_file FE_BME280_pkg.vhd VHDL PATH FE_BME280_pkg.vhd
add_fileset_file i2c_pkg.vhd VHDL PATH ../I2C/i2c_pkg.vhd


# 
# parameters
# 
add_parameter sdo STD_LOGIC 0
set_parameter_property sdo DEFAULT_VALUE 0
set_parameter_property sdo DISPLAY_NAME sdo
set_parameter_property sdo TYPE STD_LOGIC
set_parameter_property sdo UNITS None
set_parameter_property sdo ALLOWED_RANGES 0:1
set_parameter_property sdo HDL_PARAMETER true
add_parameter reads_per_second INTEGER 16
set_parameter_property reads_per_second DEFAULT_VALUE 16
set_parameter_property reads_per_second DISPLAY_NAME reads_per_second
set_parameter_property reads_per_second TYPE INTEGER
set_parameter_property reads_per_second UNITS None
set_parameter_property reads_per_second ALLOWED_RANGES -2147483648:2147483647
set_parameter_property reads_per_second HDL_PARAMETER true
add_parameter input_clk INTEGER 50000000
set_parameter_property input_clk DEFAULT_VALUE 50000000
set_parameter_property input_clk DISPLAY_NAME input_clk
set_parameter_property input_clk TYPE INTEGER
set_parameter_property input_clk UNITS None
set_parameter_property input_clk ALLOWED_RANGES -2147483648:2147483647
set_parameter_property input_clk HDL_PARAMETER true


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock_sink
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink sys_clk clk Input 1


# 
# connection point bme_output
# 
add_interface bme_output avalon_streaming start
set_interface_property bme_output associatedClock clock_sink
set_interface_property bme_output associatedReset reset
set_interface_property bme_output dataBitsPerSymbol 96
set_interface_property bme_output errorDescriptor ""
set_interface_property bme_output firstSymbolInHighOrderBits true
set_interface_property bme_output maxChannel 0
set_interface_property bme_output readyLatency 0
set_interface_property bme_output ENABLED true
set_interface_property bme_output EXPORT_OF ""
set_interface_property bme_output PORT_NAME_MAP ""
set_interface_property bme_output CMSIS_SVD_VARIABLES ""
set_interface_property bme_output SVD_ADDRESS_GROUP ""

add_interface_port bme_output bme_output_data data Output 96
add_interface_port bme_output bme_output_error error Output 2
add_interface_port bme_output bme_output_valid valid Output 1


# 
# connection point control_conduit
# 
add_interface control_conduit conduit end
set_interface_property control_conduit associatedClock clock_sink
set_interface_property control_conduit associatedReset reset
set_interface_property control_conduit ENABLED true
set_interface_property control_conduit EXPORT_OF ""
set_interface_property control_conduit PORT_NAME_MAP ""
set_interface_property control_conduit CMSIS_SVD_VARIABLES ""
set_interface_property control_conduit SVD_ADDRESS_GROUP ""

add_interface_port control_conduit busy_out busy_out Output 1
add_interface_port control_conduit continuous continuous Input 1
add_interface_port control_conduit enable enable Input 1


# 
# connection point I2C_Interface
# 
add_interface I2C_Interface conduit end
set_interface_property I2C_Interface associatedClock clock_sink
set_interface_property I2C_Interface associatedReset ""
set_interface_property I2C_Interface ENABLED true
set_interface_property I2C_Interface EXPORT_OF ""
set_interface_property I2C_Interface PORT_NAME_MAP ""
set_interface_property I2C_Interface CMSIS_SVD_VARIABLES ""
set_interface_property I2C_Interface SVD_ADDRESS_GROUP ""

add_interface_port I2C_Interface i2c_ack_error i2c_ack_error Input 1
add_interface_port I2C_Interface i2c_addr i2c_addr Output 7
add_interface_port I2C_Interface i2c_busy i2c_busy Input 1
add_interface_port I2C_Interface i2c_data_rd i2c_data_rd Input 8
add_interface_port I2C_Interface i2c_data_wr i2c_data_wr Output 8
add_interface_port I2C_Interface i2c_ena i2c_ena Output 1
add_interface_port I2C_Interface i2c_rw i2c_rw Output 1


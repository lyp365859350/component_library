# TCL File Generated by Component Editor 18.0
# Fri Mar 27 14:35:32 MDT 2020
# DO NOT MODIFY


# 
# FE_FPGA_Microphone_Encoder_Decoder "FE_FPGA_Microphone_Encoder_Decoder" v1.0
#  2020.03.27.14:35:32
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module FE_FPGA_Microphone_Encoder_Decoder
# 
set_module_property DESCRIPTION ""
set_module_property NAME FE_FPGA_Microphone_Encoder_Decoder
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME FE_FPGA_Microphone_Encoder_Decoder
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL FE_FPGA_Microphone_Encoder_Decoder
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file FE_FPGA_Microphone_Encoder_Decoder.vhd VHDL PATH FE_FPGA_Microphone_Encoder_Decoder.vhd TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter avalon_data_width INTEGER 32 ""
set_parameter_property avalon_data_width DEFAULT_VALUE 32
set_parameter_property avalon_data_width DISPLAY_NAME avalon_data_width
set_parameter_property avalon_data_width TYPE INTEGER
set_parameter_property avalon_data_width UNITS None
set_parameter_property avalon_data_width ALLOWED_RANGES -2147483648:2147483647
set_parameter_property avalon_data_width DESCRIPTION ""
set_parameter_property avalon_data_width HDL_PARAMETER true
add_parameter mic_data_width INTEGER 24
set_parameter_property mic_data_width DEFAULT_VALUE 24
set_parameter_property mic_data_width DISPLAY_NAME mic_data_width
set_parameter_property mic_data_width TYPE INTEGER
set_parameter_property mic_data_width UNITS None
set_parameter_property mic_data_width ALLOWED_RANGES -2147483648:2147483647
set_parameter_property mic_data_width HDL_PARAMETER true
add_parameter bme_data_width INTEGER 64
set_parameter_property bme_data_width DEFAULT_VALUE 64
set_parameter_property bme_data_width DISPLAY_NAME bme_data_width
set_parameter_property bme_data_width TYPE INTEGER
set_parameter_property bme_data_width UNITS None
set_parameter_property bme_data_width ALLOWED_RANGES -2147483648:2147483647
set_parameter_property bme_data_width HDL_PARAMETER true
add_parameter rgb_data_width INTEGER 16
set_parameter_property rgb_data_width DEFAULT_VALUE 16
set_parameter_property rgb_data_width DISPLAY_NAME rgb_data_width
set_parameter_property rgb_data_width TYPE INTEGER
set_parameter_property rgb_data_width UNITS None
set_parameter_property rgb_data_width ALLOWED_RANGES -2147483648:2147483647
set_parameter_property rgb_data_width HDL_PARAMETER true
add_parameter cfg_data_width INTEGER 16
set_parameter_property cfg_data_width DEFAULT_VALUE 16
set_parameter_property cfg_data_width DISPLAY_NAME cfg_data_width
set_parameter_property cfg_data_width TYPE INTEGER
set_parameter_property cfg_data_width UNITS None
set_parameter_property cfg_data_width ALLOWED_RANGES -2147483648:2147483647
set_parameter_property cfg_data_width HDL_PARAMETER true
add_parameter ch_width INTEGER 4
set_parameter_property ch_width DEFAULT_VALUE 4
set_parameter_property ch_width DISPLAY_NAME ch_width
set_parameter_property ch_width TYPE INTEGER
set_parameter_property ch_width UNITS None
set_parameter_property ch_width ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ch_width HDL_PARAMETER true
add_parameter n_mics INTEGER 16
set_parameter_property n_mics DEFAULT_VALUE 16
set_parameter_property n_mics DISPLAY_NAME n_mics
set_parameter_property n_mics TYPE INTEGER
set_parameter_property n_mics UNITS None
set_parameter_property n_mics ALLOWED_RANGES -2147483648:2147483647
set_parameter_property n_mics HDL_PARAMETER true


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock sys_clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point RJ45_Interface
# 
add_interface RJ45_Interface conduit end
set_interface_property RJ45_Interface associatedClock ""
set_interface_property RJ45_Interface associatedReset reset
set_interface_property RJ45_Interface ENABLED true
set_interface_property RJ45_Interface EXPORT_OF ""
set_interface_property RJ45_Interface PORT_NAME_MAP ""
set_interface_property RJ45_Interface CMSIS_SVD_VARIABLES ""
set_interface_property RJ45_Interface SVD_ADDRESS_GROUP ""

add_interface_port RJ45_Interface serial_data_in serial_data_in Input 1
add_interface_port RJ45_Interface serial_data_out serial_data_out Output 1
add_interface_port RJ45_Interface serial_clk_out serial_clk_out Output 1


# 
# connection point sys_clk
# 
add_interface sys_clk clock end
set_interface_property sys_clk clockRate 0
set_interface_property sys_clk ENABLED true
set_interface_property sys_clk EXPORT_OF ""
set_interface_property sys_clk PORT_NAME_MAP ""
set_interface_property sys_clk CMSIS_SVD_VARIABLES ""
set_interface_property sys_clk SVD_ADDRESS_GROUP ""

add_interface_port sys_clk sys_clk clk Input 1


# 
# connection point control_conduit
# 
add_interface control_conduit conduit end
set_interface_property control_conduit associatedClock ""
set_interface_property control_conduit associatedReset reset
set_interface_property control_conduit ENABLED true
set_interface_property control_conduit EXPORT_OF ""
set_interface_property control_conduit PORT_NAME_MAP ""
set_interface_property control_conduit CMSIS_SVD_VARIABLES ""
set_interface_property control_conduit SVD_ADDRESS_GROUP ""

add_interface_port control_conduit busy_out busy_out Output 1


# 
# connection point bme_output
# 
add_interface bme_output avalon_streaming start
set_interface_property bme_output associatedClock sys_clk
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

add_interface_port bme_output bme_out_data data Output 96
add_interface_port bme_output bme_out_error error Output 2
add_interface_port bme_output bme_out_valid valid Output 1


# 
# connection point mic_output
# 
add_interface mic_output avalon_streaming start
set_interface_property mic_output associatedClock sys_clk
set_interface_property mic_output associatedReset reset
set_interface_property mic_output dataBitsPerSymbol 32
set_interface_property mic_output errorDescriptor ""
set_interface_property mic_output firstSymbolInHighOrderBits true
set_interface_property mic_output maxChannel 0
set_interface_property mic_output readyLatency 0
set_interface_property mic_output ENABLED true
set_interface_property mic_output EXPORT_OF ""
set_interface_property mic_output PORT_NAME_MAP ""
set_interface_property mic_output CMSIS_SVD_VARIABLES ""
set_interface_property mic_output SVD_ADDRESS_GROUP ""

add_interface_port mic_output mic_out_channel channel Output ch_width
add_interface_port mic_output mic_out_data data Output avalon_data_width
add_interface_port mic_output mic_out_error error Output 2
add_interface_port mic_output mic_out_valid valid Output 1


# 
# connection point cfg_input
# 
add_interface cfg_input avalon_streaming end
set_interface_property cfg_input associatedClock sys_clk
set_interface_property cfg_input associatedReset reset
set_interface_property cfg_input dataBitsPerSymbol 16
set_interface_property cfg_input errorDescriptor ""
set_interface_property cfg_input firstSymbolInHighOrderBits true
set_interface_property cfg_input maxChannel 0
set_interface_property cfg_input readyLatency 0
set_interface_property cfg_input ENABLED true
set_interface_property cfg_input EXPORT_OF ""
set_interface_property cfg_input PORT_NAME_MAP ""
set_interface_property cfg_input CMSIS_SVD_VARIABLES ""
set_interface_property cfg_input SVD_ADDRESS_GROUP ""

add_interface_port cfg_input cfg_input_data data Input cfg_data_width
add_interface_port cfg_input cfg_input_error error Input 2
add_interface_port cfg_input cfg_input_valid valid Input 1


# 
# connection point rgb_input
# 
add_interface rgb_input avalon_streaming end
set_interface_property rgb_input associatedClock sys_clk
set_interface_property rgb_input associatedReset reset
set_interface_property rgb_input dataBitsPerSymbol 16
set_interface_property rgb_input errorDescriptor ""
set_interface_property rgb_input firstSymbolInHighOrderBits true
set_interface_property rgb_input maxChannel 0
set_interface_property rgb_input readyLatency 0
set_interface_property rgb_input ENABLED true
set_interface_property rgb_input EXPORT_OF ""
set_interface_property rgb_input PORT_NAME_MAP ""
set_interface_property rgb_input CMSIS_SVD_VARIABLES ""
set_interface_property rgb_input SVD_ADDRESS_GROUP ""

add_interface_port rgb_input rgb_input_data data Input rgb_data_width
add_interface_port rgb_input rgb_input_error error Input 2
add_interface_port rgb_input rgb_input_valid valid Input 1


# 
# connection point serial_clk
# 
add_interface serial_clk clock end
set_interface_property serial_clk clockRate 0
set_interface_property serial_clk ENABLED true
set_interface_property serial_clk EXPORT_OF ""
set_interface_property serial_clk PORT_NAME_MAP ""
set_interface_property serial_clk CMSIS_SVD_VARIABLES ""
set_interface_property serial_clk SVD_ADDRESS_GROUP ""

add_interface_port serial_clk serial_clk clk Input 1


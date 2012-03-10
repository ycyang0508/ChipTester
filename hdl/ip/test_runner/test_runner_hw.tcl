# TCL File Generated by Component Editor 11.1sp1
# Sat Mar 10 23:26:48 GMT 2012
# DO NOT MODIFY


# +-----------------------------------
# | 
# | test_runner "Test Runner" v1.0
# | alexh 2012.03.10.23:26:48
# | 
# | 
# | /home/alex/socp-test/next/hwtest/hdl/ip/test_runner/test_runner.v
# | 
# |    ./test_runner.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module test_runner
# | 
set_module_property NAME test_runner
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR alexh
set_module_property DISPLAY_NAME "Test Runner"
set_module_property TOP_LEVEL_HDL_FILE test_runner.v
set_module_property TOP_LEVEL_HDL_MODULE test_runner
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME test_runner
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file test_runner.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter ADDR_WIDTH INTEGER 8
set_parameter_property ADDR_WIDTH DEFAULT_VALUE 8
set_parameter_property ADDR_WIDTH DISPLAY_NAME ADDR_WIDTH
set_parameter_property ADDR_WIDTH TYPE INTEGER
set_parameter_property ADDR_WIDTH UNITS None
set_parameter_property ADDR_WIDTH AFFECTS_GENERATION false
set_parameter_property ADDR_WIDTH HDL_PARAMETER true
add_parameter DATA_WIDTH INTEGER 8
set_parameter_property DATA_WIDTH DEFAULT_VALUE 8
set_parameter_property DATA_WIDTH DISPLAY_NAME DATA_WIDTH
set_parameter_property DATA_WIDTH TYPE INTEGER
set_parameter_property DATA_WIDTH ENABLED false
set_parameter_property DATA_WIDTH UNITS None
set_parameter_property DATA_WIDTH AFFECTS_GENERATION false
set_parameter_property DATA_WIDTH HDL_PARAMETER true
add_parameter NREGS INTEGER 128
set_parameter_property NREGS DEFAULT_VALUE 128
set_parameter_property NREGS DISPLAY_NAME NREGS
set_parameter_property NREGS TYPE INTEGER
set_parameter_property NREGS ENABLED false
set_parameter_property NREGS UNITS None
set_parameter_property NREGS AFFECTS_GENERATION false
set_parameter_property NREGS HDL_PARAMETER true
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_slave_0
# | 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock_sink
set_interface_property avalon_slave_0 associatedReset reset_sink
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 isMemoryDevice true
set_interface_property avalon_slave_0 isNonVolatileStorage false
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 1
set_interface_property avalon_slave_0 printableDevice false
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitStates 0
set_interface_property avalon_slave_0 readWaitTime 0
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0

set_interface_property avalon_slave_0 ENABLED true

add_interface_port avalon_slave_0 address address Input ADDR_WIDTH
add_interface_port avalon_slave_0 read read Input 1
add_interface_port avalon_slave_0 readdata readdata Output 8
add_interface_port avalon_slave_0 readdatavalid readdatavalid Output 1
add_interface_port avalon_slave_0 write write Input 1
add_interface_port avalon_slave_0 writedata writedata Input 8
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock_sink
# | 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0

set_interface_property clock_sink ENABLED true

add_interface_port clock_sink clock clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset_sink
# | 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges NONE

set_interface_property reset_sink ENABLED true

add_interface_port reset_sink nreset reset_n Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point interrupt_sender
# | 
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint avalon_slave_0
set_interface_property interrupt_sender associatedClock clock_sink
set_interface_property interrupt_sender associatedReset reset_sink

set_interface_property interrupt_sender ENABLED true

add_interface_port interrupt_sender irq irq Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point test_runner_conduit
# | 
add_interface test_runner_conduit conduit end

set_interface_property test_runner_conduit ENABLED true

add_interface_port test_runner_conduit done export Input 1
add_interface_port test_runner_conduit enable export Output 1
add_interface_port test_runner_conduit busy export Output 1
# | 
# +-----------------------------------

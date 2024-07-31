set search_path ". /synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/synopsys/models"
set link_library "saed90nm_max.db"
set target_library "saed90nm_max.db"
set symbol_library "saed90nm_max.db"
analyze -library WORK -format verilog {/home/grad/siu856512759/Desktop/ECE516/Lab6/pipelined_adder.v }
elaborate pipelined_adder -library WORK
link
compile -exact_map

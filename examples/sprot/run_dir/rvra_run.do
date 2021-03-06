# clear the console
clear

# create project library and make sure it is empty
alib work
adel -all


# compile project's source file (alongside the UVM library)
alog $UVMCOMP -msg 0 -dbg -f flist      

transcript file sva_with_uvm.log

go2uvm sprot

# run simulation
asim +access +rw  $UVMSIM sprot_go2uvm +UVM_VERBOSITY=UVM_FULL
run -all

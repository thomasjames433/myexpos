#!/bin/bash

cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
load --os $HOME/myexpos/expl/samples/stg14/mods/os_mod.xsm
load --module 7 $HOME/myexpos/expl/samples/stg14/mods/boot_mod.xsm
load --module 5 $HOME/myexpos/expl/samples/stg14/mods/sched_mod.xsm
load --int=timer $HOME/myexpos/expl/samples/stg14/mods/timer_mod.xsm
load --int=10 $HOME/myexpos/expl/samples/stg14/int_10.xsm
load --idle $HOME/myexpos/expl/samples/stg14/idle.xsm
load --init $HOME/myexpos/expl/samples/stg14/odd.xsm
EOF


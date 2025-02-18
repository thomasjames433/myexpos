#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg15/idle.expl
./expl  $HOME/myexpos/expl/samples/stg15/odd.expl
./expl  $HOME/myexpos/expl/samples/stg15/even.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg15/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg15/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg15/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg15/timer.spl
./spl  $HOME/myexpos/expl/samples/stg15/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg15/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg15/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg15/mod_0.spl



cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg15/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg15/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg15/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg15/timer.xsm
load --exhandler $HOME/myexpos/expl/samples/stg12/haltprog.xsm
load --int=10 $HOME/myexpos/expl/samples/stg15/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg15/int_7.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg15/idle.xsm
load --init $HOME/myexpos/expl/samples/stg15/odd.xsm

load --module 4 $HOME/myexpos/expl/samples/stg15/mod_4.xsm

load  --exec $HOME/myexpos/expl/samples/stg15/even.xsm
exit
EOF

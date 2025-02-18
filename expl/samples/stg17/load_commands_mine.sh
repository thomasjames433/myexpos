#!/bin/bash

cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
load --os $HOME/myexpos/expl/samples/stg15/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg15/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg15/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg15/timer.xsm
load --exhandler $HOME/myexpos/expl/samples/stg12/haltprog.xsm
load --int=10 $HOME/myexpos/expl/samples/stg15/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg15/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg15/int_6.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg15/idle.xsm
load --init $HOME/myexpos/expl/samples/stg15/init.xsm
load --int=console $HOME/myexpos/expl/samples/stg15/console.xsm

load --module 4 $HOME/myexpos/expl/samples/stg15/mod_4.xsm
load --module 0 $HOOME/myexpos/expl/samples/stg15/mod_0.xsm

load  --exec $HOME/myexpos/expl/samples/stg15/evennos.xsm

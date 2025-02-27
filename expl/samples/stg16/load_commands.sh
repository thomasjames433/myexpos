#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg16/idle.expl
./expl  $HOME/myexpos/expl/samples/stg16/init.expl
./expl  $HOME/myexpos/expl/samples/stg16/asg1.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg16/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg16/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg16/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg16/timer.spl
./spl  $HOME/myexpos/expl/samples/stg16/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg16/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg16/int_6.spl
./spl  $HOME/myexpos/expl/samples/stg16/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg16/mod_0.spl
./spl  $HOME/myexpos/expl/samples/stg16/console.spl


cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg16/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg16/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg16/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg16/timer.xsm
load --exhandler $HOME/myexpos/expl/samples/stg12/haltprog.xsm
load --int=10 $HOME/myexpos/expl/samples/stg16/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg16/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg16/int_6.xsm

load --int=console $HOME/myexpos/expl/samples/stg16/console.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg16/idle.xsm
load --init $HOME/myexpos/expl/samples/stg16/asg1.xsm

load --module 4 $HOME/myexpos/expl/samples/stg16/mod_4.xsm
exit
EOF

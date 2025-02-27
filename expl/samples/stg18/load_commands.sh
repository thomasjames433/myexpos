#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg18/idle.expl
./expl  $HOME/myexpos/expl/samples/stg18/init.expl
./expl  $HOME/myexpos/expl/samples/stg18/odd.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg18/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg18/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg18/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg18/timer.spl
./spl  $HOME/myexpos/expl/samples/stg18/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg18/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg18/int_6.spl
./spl  $HOME/myexpos/expl/samples/stg18/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg18/mod_0.spl
./spl  $HOME/myexpos/expl/samples/stg18/console.spl

./spl  $HOME/myexpos/expl/samples/stg18/int_9.spl
./spl  $HOME/myexpos/expl/samples/stg18/mod_1.spl
./spl  $HOME/myexpos/expl/samples/stg18/mod_2.spl

./spl  $HOME/myexpos/expl/samples/stg18/disk.spl

cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg18/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg18/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg18/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg18/timer.xsm
load --int=disk $HOME/myexpos/expl/samples/stg18/disk.xsm

load --exhandler $HOME/myexpos/expl/samples/stg12/haltprog.xsm

load --int=10 $HOME/myexpos/expl/samples/stg18/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg18/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg18/int_6.xsm
load --int=9 $HOME/myexpos/expl/samples/stg18/int_9.xsm

load --int=console $HOME/myexpos/expl/samples/stg18/console.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg18/idle.xsm
load --init $HOME/myexpos/expl/samples/stg18/init.xsm

load --module 4 $HOME/myexpos/expl/samples/stg18/mod_4.xsm
load --module 1 $HOME/myexpos/expl/samples/stg18/mod_1.xsm
load --module 2 $HOME/myexpos/expl/samples/stg18/mod_2.xsm

load --exec  $HOME/myexpos/expl/samples/stg18/odd.xsm

exit
EOF

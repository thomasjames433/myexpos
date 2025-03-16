#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg22/idle.expl
./expl  $HOME/myexpos/expl/samples/stg22/init.expl
./expl  $HOME/myexpos/expl/samples/stg22/odd.expl
./expl  $HOME/myexpos/expl/samples/stg22/even.expl
./expl  $HOME/myexpos/expl/samples/stg22/llist.expl
./expl  $HOME/myexpos/expl/samples/stg22/fork3.expl
./expl  $HOME/myexpos/expl/samples/stg22/pid.expl
./expl  $HOME/myexpos/expl/samples/stg22/asg1.expl
./expl  $HOME/myexpos/expl/samples/stg22/parent.expl
./expl  $HOME/myexpos/expl/samples/stg22/child.expl
./expl  $HOME/myexpos/expl/samples/stg22/mergeseq.expl
./expl  $HOME/myexpos/expl/samples/stg22/mergecon.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg22/mods/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg22/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg22/mods/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg22/timer.spl
./spl  $HOME/myexpos/expl/samples/stg22/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg22/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg22/int_6.spl
./spl  $HOME/myexpos/expl/samples/stg22/mods/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg22/mod_0.spl
./spl  $HOME/myexpos/expl/samples/stg22/console.spl

./spl  $HOME/myexpos/expl/samples/stg22/int_9.spl
./spl  $HOME/myexpos/expl/samples/stg22/mod_1.spl
./spl  $HOME/myexpos/expl/samples/stg22/mods/mod_2.spl

./spl  $HOME/myexpos/expl/samples/stg22/disk.spl
./spl  $HOME/myexpos/expl/samples/stg22/exhandler.spl
./spl  $HOME/myexpos/expl/samples/stg22/int_8.spl
./spl  $HOME/myexpos/expl/samples/stg22/int_11.spl
./spl  $HOME/myexpos/expl/samples/stg22/int_13.spl
./spl  $HOME/myexpos/expl/samples/stg22/int_14.spl
./spl  $HOME/myexpos/expl/samples/stg22/mods/int_15.spl

cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg22/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg22/mods/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg22/mods/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg22/timer.xsm
load --int=disk $HOME/myexpos/expl/samples/stg22/disk.xsm

load --exhandler $HOME/myexpos/expl/samples/stg22/exhandler.xsm

load --int=10 $HOME/myexpos/expl/samples/stg22/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg22/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg22/int_6.xsm
load --int=9 $HOME/myexpos/expl/samples/stg22/int_9.xsm
load --int=8 $HOME/myexpos/expl/samples/stg22/mods/int_8.xsm
load --int=11 $HOME/myexpos/expl/samples/stg22/int_11.xsm
load --int=15 $HOME/myexpos/expl/samples/stg22/mods/int_15.xsm
load --int=13 $HOME/myexpos/expl/samples/stg22/int_13.xsm
load --int=14 $HOME/myexpos/expl/samples/stg22/int_14.xsm


load --int=console $HOME/myexpos/expl/samples/stg22/console.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg22/idle.xsm
load --init $HOME/myexpos/expl/samples/stg22/init.xsm

load --module 4 $HOME/myexpos/expl/samples/stg22/mods/mod_4.xsm
load --module 1 $HOME/myexpos/expl/samples/stg22/mod_1.xsm
load --module 2 $HOME/myexpos/expl/samples/stg22/mods/mod_2.xsm

load --exec  $HOME/myexpos/expl/samples/stg22/odd.xsm
load --exec  $HOME/myexpos/expl/samples/stg22/even.xsm
load --exec  $HOME/myexpos/expl/samples/stg22/llist.xsm
load --exec  $HOME/myexpos/expl/samples/stg22/fork3.xsm
load --exec  $HOME/myexpos/expl/samples/stg22/pid.xsm
load --exec  $HOME/myexpos/expl/samples/stg22/asg1.xsm
load --exec  $HOME/myexpos/expl/samples/stg22/parent.xsm
load --exec  $HOME/myexpos/expl/samples/stg22/child.xsm
load --exec  $HOME/myexpos/expl/samples/stg22/mergeseq.xsm
load --exec  $HOME/myexpos/expl/samples/stg22/mergecon.xsm

exit
EOF

#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg23/idle.expl
./expl  $HOME/myexpos/expl/samples/stg23/init.expl
./expl  $HOME/myexpos/expl/samples/stg23/odd.expl
./expl  $HOME/myexpos/expl/samples/stg23/even.expl
./expl  $HOME/myexpos/expl/samples/stg23/llist.expl
./expl  $HOME/myexpos/expl/samples/stg23/fork3.expl
./expl  $HOME/myexpos/expl/samples/stg23/pid.expl
./expl  $HOME/myexpos/expl/samples/stg23/asg1.expl
./expl  $HOME/myexpos/expl/samples/stg23/parent.expl
./expl  $HOME/myexpos/expl/samples/stg23/child.expl
./expl  $HOME/myexpos/expl/samples/stg23/mergeseq.expl
./expl  $HOME/myexpos/expl/samples/stg23/mergecon.expl
./expl  $HOME/myexpos/expl/samples/stg23/create.expl
./expl  $HOME/myexpos/expl/samples/stg23/delete.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg23/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg23/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg23/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg23/timer.spl
./spl  $HOME/myexpos/expl/samples/stg23/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg23/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg23/int_6.spl
./spl  $HOME/myexpos/expl/samples/stg23/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg23/mod_0.spl
./spl  $HOME/myexpos/expl/samples/stg23/console.spl

./spl  $HOME/myexpos/expl/samples/stg23/int_9.spl
./spl  $HOME/myexpos/expl/samples/stg23/mod_1.spl
./spl  $HOME/myexpos/expl/samples/stg23/mod_2.spl

./spl  $HOME/myexpos/expl/samples/stg23/disk.spl
./spl  $HOME/myexpos/expl/samples/stg23/exhandler.spl
./spl  $HOME/myexpos/expl/samples/stg23/int_8.spl
./spl  $HOME/myexpos/expl/samples/stg23/int_11.spl
./spl  $HOME/myexpos/expl/samples/stg23/int_13.spl
./spl  $HOME/myexpos/expl/samples/stg23/int_14.spl
./spl  $HOME/myexpos/expl/samples/stg23/int_15.spl
./spl  $HOME/myexpos/expl/samples/stg23/int_4.spl

cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg23/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg23/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg23/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg23/timer.xsm
load --int=disk $HOME/myexpos/expl/samples/stg23/disk.xsm

load --exhandler $HOME/myexpos/expl/samples/stg23/exhandler.xsm

load --int=10 $HOME/myexpos/expl/samples/stg23/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg23/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg23/int_6.xsm
load --int=9 $HOME/myexpos/expl/samples/stg23/int_9.xsm
load --int=8 $HOME/myexpos/expl/samples/stg23/int_8.xsm
load --int=11 $HOME/myexpos/expl/samples/stg23/int_11.xsm
load --int=15 $HOME/myexpos/expl/samples/stg23/int_15.xsm
load --int=13 $HOME/myexpos/expl/samples/stg23/int_13.xsm
load --int=14 $HOME/myexpos/expl/samples/stg23/int_14.xsm
load --int=4 $HOME/myexpos/expl/samples/stg23/int_4.xsm


load --int=console $HOME/myexpos/expl/samples/stg23/console.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg23/idle.xsm
load --init $HOME/myexpos/expl/samples/stg23/init.xsm

load --module 4 $HOME/myexpos/expl/samples/stg23/mod_4.xsm
load --module 1 $HOME/myexpos/expl/samples/stg23/mod_1.xsm
load --module 2 $HOME/myexpos/expl/samples/stg23/mod_2.xsm

load --exec  $HOME/myexpos/expl/samples/stg23/odd.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/even.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/llist.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/fork3.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/pid.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/asg1.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/parent.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/child.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/mergeseq.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/mergecon.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/create.xsm
load --exec  $HOME/myexpos/expl/samples/stg23/delete.xsm

exit
EOF

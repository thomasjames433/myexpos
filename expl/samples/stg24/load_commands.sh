#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg24/idle.expl
./expl  $HOME/myexpos/expl/samples/stg24/init.expl
./expl  $HOME/myexpos/expl/samples/stg24/odd.expl
./expl  $HOME/myexpos/expl/samples/stg24/even.expl
./expl  $HOME/myexpos/expl/samples/stg24/llist.expl
./expl  $HOME/myexpos/expl/samples/stg24/fork3.expl
./expl  $HOME/myexpos/expl/samples/stg24/pid.expl
./expl  $HOME/myexpos/expl/samples/stg24/parent.expl
./expl  $HOME/myexpos/expl/samples/stg24/child.expl
./expl  $HOME/myexpos/expl/samples/stg24/mergeseq.expl
./expl  $HOME/myexpos/expl/samples/stg24/mergecon.expl
./expl  $HOME/myexpos/expl/samples/stg24/create.expl
./expl  $HOME/myexpos/expl/samples/stg24/delete.expl
./expl  $HOME/myexpos/expl/samples/stg24/asg1.expl
./expl  $HOME/myexpos/expl/samples/stg24/asg2.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg24/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg24/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg24/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg24/timer.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_6.spl
./spl  $HOME/myexpos/expl/samples/stg24/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg24/mod_0.spl
./spl  $HOME/myexpos/expl/samples/stg24/console.spl

./spl  $HOME/myexpos/expl/samples/stg24/int_9.spl
./spl  $HOME/myexpos/expl/samples/stg24/mod_1.spl
./spl  $HOME/myexpos/expl/samples/stg24/mod_2.spl

./spl  $HOME/myexpos/expl/samples/stg24/disk.spl
./spl  $HOME/myexpos/expl/samples/stg24/exhandler.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_8.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_11.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_13.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_14.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_15.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_4.spl

./spl  $HOME/myexpos/expl/samples/stg24/mod_3.spl
./spl  $HOME/myexpos/expl/samples/stg24/int_5.spl


cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg24/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg24/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg24/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg24/timer.xsm
load --int=disk $HOME/myexpos/expl/samples/stg24/disk.xsm

load --exhandler $HOME/myexpos/expl/samples/stg24/exhandler.xsm

load --int=10 $HOME/myexpos/expl/samples/stg24/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg24/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg24/int_6.xsm
load --int=9 $HOME/myexpos/expl/samples/stg24/int_9.xsm
load --int=8 $HOME/myexpos/expl/samples/stg24/int_8.xsm
load --int=11 $HOME/myexpos/expl/samples/stg24/int_11.xsm
load --int=15 $HOME/myexpos/expl/samples/stg24/int_15.xsm
load --int=13 $HOME/myexpos/expl/samples/stg24/int_13.xsm
load --int=14 $HOME/myexpos/expl/samples/stg24/int_14.xsm
load --int=4 $HOME/myexpos/expl/samples/stg24/int_4.xsm
load --int=5 $HOME/myexpos/expl/samples/stg24/int_5.xsm


load --int=console $HOME/myexpos/expl/samples/stg24/console.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg24/idle.xsm
load --init $HOME/myexpos/expl/samples/stg24/init.xsm

load --module 4 $HOME/myexpos/expl/samples/stg24/mod_4.xsm
load --module 1 $HOME/myexpos/expl/samples/stg24/mod_1.xsm
load --module 2 $HOME/myexpos/expl/samples/stg24/mod_2.xsm
load --module 3 $HOME/myexpos/expl/samples/stg24/mod_3.xsm

load --exec  $HOME/myexpos/expl/samples/stg24/odd.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/even.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/llist.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/fork3.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/pid.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/parent.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/child.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/mergeseq.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/mergecon.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/create.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/delete.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/asg1.xsm
load --exec  $HOME/myexpos/expl/samples/stg24/asg2.xsm

load --data  $HOME/myexpos/expl/samples/stg24/numbers.dat

exit
EOF

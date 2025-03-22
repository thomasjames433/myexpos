#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg25/idle.expl
./expl  $HOME/myexpos/expl/samples/stg25/init.expl
./expl  $HOME/myexpos/expl/samples/stg25/odd.expl
./expl  $HOME/myexpos/expl/samples/stg25/even.expl
./expl  $HOME/myexpos/expl/samples/stg25/llist.expl
./expl  $HOME/myexpos/expl/samples/stg25/fork3.expl
./expl  $HOME/myexpos/expl/samples/stg25/pid.expl
./expl  $HOME/myexpos/expl/samples/stg25/parent.expl
./expl  $HOME/myexpos/expl/samples/stg25/child.expl
./expl  $HOME/myexpos/expl/samples/stg25/mergeseq.expl
./expl  $HOME/myexpos/expl/samples/stg25/mergecon.expl
./expl  $HOME/myexpos/expl/samples/stg25/create.expl
./expl  $HOME/myexpos/expl/samples/stg25/delete.expl
./expl  $HOME/myexpos/expl/samples/stg25/asg1.expl
./expl  $HOME/myexpos/expl/samples/stg25/asg2.expl
./expl  $HOME/myexpos/expl/samples/stg25/asg3.expl
./expl  $HOME/myexpos/expl/samples/stg25/asg4.expl
./expl  $HOME/myexpos/expl/samples/stg25/asg1_mod.expl

./expl  $HOME/myexpos/expl/samples/stg25/ls.expl
./expl  $HOME/myexpos/expl/samples/stg25/rm.expl
./expl  $HOME/myexpos/expl/samples/stg25/cp.expl
./expl  $HOME/myexpos/expl/samples/stg25/cat.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg25/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg25/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg25/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg25/timer.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_6.spl
./spl  $HOME/myexpos/expl/samples/stg25/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg25/mod_0.spl
./spl  $HOME/myexpos/expl/samples/stg25/console.spl

./spl  $HOME/myexpos/expl/samples/stg25/int_9.spl
./spl  $HOME/myexpos/expl/samples/stg25/mod_1.spl
./spl  $HOME/myexpos/expl/samples/stg25/mod_2.spl

./spl  $HOME/myexpos/expl/samples/stg25/disk.spl
./spl  $HOME/myexpos/expl/samples/stg25/exhandler.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_8.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_11.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_13.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_14.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_15.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_4.spl

./spl  $HOME/myexpos/expl/samples/stg25/mod_3.spl
./spl  $HOME/myexpos/expl/samples/stg25/int_5.spl


cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg25/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg25/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg25/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg25/timer.xsm
load --int=disk $HOME/myexpos/expl/samples/stg25/disk.xsm

load --exhandler $HOME/myexpos/expl/samples/stg25/exhandler.xsm

load --int=10 $HOME/myexpos/expl/samples/stg25/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg25/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg25/int_6.xsm
load --int=9 $HOME/myexpos/expl/samples/stg25/int_9.xsm
load --int=8 $HOME/myexpos/expl/samples/stg25/int_8.xsm
load --int=11 $HOME/myexpos/expl/samples/stg25/int_11.xsm
load --int=15 $HOME/myexpos/expl/samples/stg25/int_15.xsm
load --int=13 $HOME/myexpos/expl/samples/stg25/int_13.xsm
load --int=14 $HOME/myexpos/expl/samples/stg25/int_14.xsm
load --int=4 $HOME/myexpos/expl/samples/stg25/int_4.xsm
load --int=5 $HOME/myexpos/expl/samples/stg25/int_5.xsm


load --int=console $HOME/myexpos/expl/samples/stg25/console.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg25/idle.xsm
load --init $HOME/myexpos/expl/samples/stg25/init.xsm

load --module 4 $HOME/myexpos/expl/samples/stg25/mod_4.xsm
load --module 1 $HOME/myexpos/expl/samples/stg25/mod_1.xsm
load --module 2 $HOME/myexpos/expl/samples/stg25/mod_2.xsm
load --module 3 $HOME/myexpos/expl/samples/stg25/mod_3.xsm

load --exec  $HOME/myexpos/expl/samples/stg25/odd.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/even.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/llist.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/fork3.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/pid.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/parent.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/child.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/mergeseq.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/mergecon.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/create.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/delete.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/asg1.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/asg2.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/asg3.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/asg4.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/asg1_mod.xsm


load --exec  $HOME/myexpos/expl/samples/stg25/ls.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/rm.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/cp.xsm
load --exec  $HOME/myexpos/expl/samples/stg25/cat.xsm

load --data  $HOME/myexpos/expl/samples/stg25/numbers.dat

exit
EOF

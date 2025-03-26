#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg27/idle.expl
./expl  $HOME/myexpos/expl/samples/stg27/init.expl
./expl  $HOME/myexpos/expl/samples/stg27/odd.expl
./expl  $HOME/myexpos/expl/samples/stg27/even.expl
./expl  $HOME/myexpos/expl/samples/stg27/llist.expl
./expl  $HOME/myexpos/expl/samples/stg27/fork3.expl
./expl  $HOME/myexpos/expl/samples/stg27/pid.expl
./expl  $HOME/myexpos/expl/samples/stg27/parent.expl
./expl  $HOME/myexpos/expl/samples/stg27/child.expl
./expl  $HOME/myexpos/expl/samples/stg27/mergeseq.expl
./expl  $HOME/myexpos/expl/samples/stg27/mergecon.expl
./expl  $HOME/myexpos/expl/samples/stg27/create.expl
./expl  $HOME/myexpos/expl/samples/stg27/delete.expl
./expl  $HOME/myexpos/expl/samples/stg27/shell.expl

./expl  $HOME/myexpos/expl/samples/stg27/asg1.expl
./expl  $HOME/myexpos/expl/samples/stg27/asg2.expl
./expl  $HOME/myexpos/expl/samples/stg27/asg3.expl
./expl  $HOME/myexpos/expl/samples/stg27/asg4.expl
./expl  $HOME/myexpos/expl/samples/stg27/asg5.expl
./expl  $HOME/myexpos/expl/samples/stg27/s25_a4.expl
./expl  $HOME/myexpos/expl/samples/stg27/pgm1.expl
./expl  $HOME/myexpos/expl/samples/stg27/pgm2.expl


./expl  $HOME/myexpos/expl/samples/stg27/ls.expl
./expl  $HOME/myexpos/expl/samples/stg27/rm.expl
./expl  $HOME/myexpos/expl/samples/stg27/cp.expl
./expl  $HOME/myexpos/expl/samples/stg27/cat.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg27/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg27/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg27/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg27/timer.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_6.spl
./spl  $HOME/myexpos/expl/samples/stg27/console.spl

./spl  $HOME/myexpos/expl/samples/stg27/int_9.spl

./spl  $HOME/myexpos/expl/samples/stg27/disk.spl
./spl  $HOME/myexpos/expl/samples/stg27/exhandler.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_8.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_11.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_13.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_14.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_15.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_4.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_12.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_16.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_17.spl
./spl  $HOME/myexpos/expl/samples/stg27/int_5.spl

./spl  $HOME/myexpos/expl/samples/stg27/mod_0.spl
./spl  $HOME/myexpos/expl/samples/stg27/mod_1.spl
./spl  $HOME/myexpos/expl/samples/stg27/mod_2.spl
./spl  $HOME/myexpos/expl/samples/stg27/mod_3.spl
./spl  $HOME/myexpos/expl/samples/stg27/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg27/mod_6.spl


cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg27/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg27/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg27/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg27/timer.xsm
load --int=disk $HOME/myexpos/expl/samples/stg27/disk.xsm

load --exhandler $HOME/myexpos/expl/samples/stg27/exhandler.xsm

load --int=10 $HOME/myexpos/expl/samples/stg27/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg27/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg27/int_6.xsm
load --int=9 $HOME/myexpos/expl/samples/stg27/int_9.xsm
load --int=8 $HOME/myexpos/expl/samples/stg27/int_8.xsm
load --int=11 $HOME/myexpos/expl/samples/stg27/int_11.xsm
load --int=15 $HOME/myexpos/expl/samples/stg27/int_15.xsm
load --int=13 $HOME/myexpos/expl/samples/stg27/int_13.xsm
load --int=14 $HOME/myexpos/expl/samples/stg27/int_14.xsm
load --int=4 $HOME/myexpos/expl/samples/stg27/int_4.xsm
load --int=5 $HOME/myexpos/expl/samples/stg27/int_5.xsm
load --int=12 $HOME/myexpos/expl/samples/stg27/int_12.xsm
load --int=16 $HOME/myexpos/expl/samples/stg27/int_16.xsm
load --int=17 $HOME/myexpos/expl/samples/stg27/int_17.xsm


load --int=console $HOME/myexpos/expl/samples/stg27/console.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg27/idle.xsm
load --init $HOME/myexpos/expl/samples/stg27/init.xsm
load --shell $HOME/myexpos/expl/samples/stg27/shell.xsm

load --module 1 $HOME/myexpos/expl/samples/stg27/mod_1.xsm
load --module 2 $HOME/myexpos/expl/samples/stg27/mod_2.xsm
load --module 3 $HOME/myexpos/expl/samples/stg27/mod_3.xsm
load --module 4 $HOME/myexpos/expl/samples/stg27/mod_4.xsm
load --module 6 $HOME/myexpos/expl/samples/stg27/mod_6.xsm

load --exec  $HOME/myexpos/expl/samples/stg27/odd.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/even.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/llist.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/fork3.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/pid.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/parent.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/child.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/mergeseq.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/mergecon.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/create.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/delete.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/asg1.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/asg2.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/asg3.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/asg4.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/s25_a4.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/pgm1.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/pgm2.xsm


load --exec  $HOME/myexpos/expl/samples/stg27/ls.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/rm.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/cp.xsm
load --exec  $HOME/myexpos/expl/samples/stg27/cat.xsm

load --data  $HOME/myexpos/expl/samples/stg27/numbers.dat

exit
EOF

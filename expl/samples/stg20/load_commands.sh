#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg20/idle.expl
./expl  $HOME/myexpos/expl/samples/stg20/init.expl
./expl  $HOME/myexpos/expl/samples/stg20/odd.expl
./expl  $HOME/myexpos/expl/samples/stg20/even.expl
./expl  $HOME/myexpos/expl/samples/stg20/llist.expl
./expl  $HOME/myexpos/expl/samples/stg20/asg2.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg20/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg20/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg20/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg20/timer.spl
./spl  $HOME/myexpos/expl/samples/stg20/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg20/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg20/int_6.spl
./spl  $HOME/myexpos/expl/samples/stg20/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg20/mod_0.spl
./spl  $HOME/myexpos/expl/samples/stg20/console.spl

./spl  $HOME/myexpos/expl/samples/stg20/int_9.spl
./spl  $HOME/myexpos/expl/samples/stg20/mod_1.spl
./spl  $HOME/myexpos/expl/samples/stg20/mod_2.spl

./spl  $HOME/myexpos/expl/samples/stg20/disk.spl
./spl  $HOME/myexpos/expl/samples/stg20/exhandler.spl
./spl  $HOME/myexpos/expl/samples/stg20/int_8.spl


cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg20/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg20/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg20/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg20/timer.xsm
load --int=disk $HOME/myexpos/expl/samples/stg20/disk.xsm

load --exhandler $HOME/myexpos/expl/samples/stg20/exhandler.xsm

load --int=10 $HOME/myexpos/expl/samples/stg20/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg20/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg20/int_6.xsm
load --int=9 $HOME/myexpos/expl/samples/stg20/int_9.xsm
load --int=8 $HOME/myexpos/expl/samples/stg20/int_8.xsm

load --int=console $HOME/myexpos/expl/samples/stg20/console.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg20/idle.xsm
load --init $HOME/myexpos/expl/samples/stg20/init.xsm

load --module 4 $HOME/myexpos/expl/samples/stg20/mod_4.xsm
load --module 1 $HOME/myexpos/expl/samples/stg20/mod_1.xsm
load --module 2 $HOME/myexpos/expl/samples/stg20/mod_2.xsm

load --exec  $HOME/myexpos/expl/samples/stg20/odd.xsm
load --exec  $HOME/myexpos/expl/samples/stg20/even.xsm

exit
EOF

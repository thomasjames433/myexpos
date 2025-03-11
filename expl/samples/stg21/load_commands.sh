#!/bin/bash

cd $HOME/myexpos/expl/
./expl  $HOME/myexpos/expl/samples/stg21/idle.expl
./expl  $HOME/myexpos/expl/samples/stg21/init.expl
./expl  $HOME/myexpos/expl/samples/stg21/odd.expl
./expl  $HOME/myexpos/expl/samples/stg21/even.expl
./expl  $HOME/myexpos/expl/samples/stg21/llist.expl


cd $HOME/myexpos/spl/
./spl  $HOME/myexpos/expl/samples/stg21/boot_module.spl
./spl  $HOME/myexpos/expl/samples/stg21/os_startup.spl
./spl  $HOME/myexpos/expl/samples/stg21/scheduler.spl
./spl  $HOME/myexpos/expl/samples/stg21/timer.spl
./spl  $HOME/myexpos/expl/samples/stg21/int_10.spl
./spl  $HOME/myexpos/expl/samples/stg21/int_7.spl
./spl  $HOME/myexpos/expl/samples/stg21/int_6.spl
./spl  $HOME/myexpos/expl/samples/stg21/mod_4.spl
./spl  $HOME/myexpos/expl/samples/stg21/mod_0.spl
./spl  $HOME/myexpos/expl/samples/stg21/console.spl

./spl  $HOME/myexpos/expl/samples/stg21/int_9.spl
./spl  $HOME/myexpos/expl/samples/stg21/mod_1.spl
./spl  $HOME/myexpos/expl/samples/stg21/mod_2.spl

./spl  $HOME/myexpos/expl/samples/stg21/disk.spl
./spl  $HOME/myexpos/expl/samples/stg21/exhandler.spl
./spl  $HOME/myexpos/expl/samples/stg21/int_8.spl
./spl  $HOME/myexpos/expl/samples/stg21/int_11.spl


cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
fdisk
load --os $HOME/myexpos/expl/samples/stg21/os_startup.xsm
load --module 7 $HOME/myexpos/expl/samples/stg21/boot_module.xsm
load --module 5 $HOME/myexpos/expl/samples/stg21/scheduler.xsm
load --int=timer $HOME/myexpos/expl/samples/stg21/timer.xsm
load --int=disk $HOME/myexpos/expl/samples/stg21/disk.xsm

load --exhandler $HOME/myexpos/expl/samples/stg21/exhandler.xsm

load --int=10 $HOME/myexpos/expl/samples/stg21/int_10.xsm
load --int=7 $HOME/myexpos/expl/samples/stg21/int_7.xsm
load --int=6 $HOME/myexpos/expl/samples/stg21/int_6.xsm
load --int=9 $HOME/myexpos/expl/samples/stg21/int_9.xsm
load --int=8 $HOME/myexpos/expl/samples/stg21/int_8.xsm
load --int=11 $HOME/myexpos/expl/samples/stg21/int_11.xsm
load --int=15 $HOME/myexpos/expl/samples/stg21/int_15.xsm


load --int=console $HOME/myexpos/expl/samples/stg21/console.xsm
load --library $HOME/myexpos/expl/library.lib
load --idle $HOME/myexpos/expl/samples/stg21/idle.xsm
load --init $HOME/myexpos/expl/samples/stg21/init.xsm

load --module 4 $HOME/myexpos/expl/samples/stg21/mod_4.xsm
load --module 1 $HOME/myexpos/expl/samples/stg21/mod_1.xsm
load --module 2 $HOME/myexpos/expl/samples/stg21/mod_2.xsm

load --exec  $HOME/myexpos/expl/samples/stg21/odd.xsm
load --exec  $HOME/myexpos/expl/samples/stg21/even.xsm
load --exec  $HOME/myexpos/expl/samples/stg21/llist.xsm

exit
EOF

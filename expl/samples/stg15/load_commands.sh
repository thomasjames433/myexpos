#!/bin/bash

cd $HOME/myexpos/xfs-interface/
./xfs-interface <<EOF
load --os $HOME/madhav_myexpos/assignments/stage15/osloader.xsm
load --module 7 $HOME/madhav_myexpos/assignments/stage15/mod_7.xsm
load --module 5 $HOME/madhav_myexpos/assignments/stage15/mod_5.xsm
load --int=timer $HOME/madhav_myexpos/assignments/stage15/timer.xsm

load --int=10 $HOME/madhav_myexpos/assignments/stage15/int_10.xsm
load --int=7 $HOME/madhav_myexpos/assignments/stage15/int_7.xsm

load --idle $HOME/myexpos/expl/samples/stg15/idle.xsm
load --init $HOME/myexpos/expl/samples/stg15/init.xsm

load --module 4 $HOME/madhav_myexpos/assignments/stage15/mod_4.xsm
load --module 0 $HOME/madhav_myexpos/assignments/stage15/mod_0.xsm

load  --exec $HOME/myexpos/expl/samples/stg15/evennos.xsm


EOF


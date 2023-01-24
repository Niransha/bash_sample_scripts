#!/bin/bash

rm nohup2.out
nohup rsync -chavzP --stats nkumarachchi2019@koko-login.hpc.fau.edu:/mnt/rna/home/nkumarachchi2019/scratch/* /media/EXT1_MALATYA/HPC/ > nohup2.out &



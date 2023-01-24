#!/bin/bash

for (( i=0; i<=300; i++ ))
do  
 printf " $(echo clus_$i) $(ncdump -h clust_traj.c$i | grep UNLIMITED | awk '{print($6)}' | sed s/\(//g) \n"


done


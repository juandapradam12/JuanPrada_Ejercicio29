#!/bin/bash
#PBS -l nodes=1:ppn=1, mem=1gb,walltime=00:05:00
#PBS -M jd.prada11@uniandes.edu.co
#PBS -m abe
#PBS -N JuanPrada_Ejercicio27

# COMPILO CON chmod u+x torque.sh Y EJECUTO CON ./torque.sh 

export OMP_NUM_THREADS=2

gcc -fopenmp HelloWorld.c -o HelloWorld_c

./HelloWorld_c

gcc advection.c -o advection.x -lm 

./advection.x

rm *_c
rm *.x 

python plots.py

rm *.dat



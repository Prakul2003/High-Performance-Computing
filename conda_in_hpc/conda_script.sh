#!/bin/bash
#PBS -q gpuq
#PBS -o out.o
#PBS -e out.e
#PBS -N conda
#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:02:00
#PBS -l nodes=n81.cluster.iitmandi.ac.in
#PBS -V

cd ${PBS_O_WORKDIR} # to make sure that we are in the right dir on compute node
echo "Running on: " # on standard output
cat ${PBS_NODEFILE} # env variable for file name containing node details
cat $PBS_NODEFILE > machines.list # also on machines.list file
echo "Program Output begins: "
source ~/miniconda3/bin/activate <environment-name> # to enable myvenv on compute node.
python python_script.py

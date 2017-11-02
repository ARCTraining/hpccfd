#!/bin/bash

# Name of Job.
#$ -N pylon-case-fluent
# Export all variables and use current working directory.
#$ -cwd -V

# Request x hours of run time (maximum=48hours).
#$ -l h_rt=01:00:00

# Specify memory requirement per process (maximum=32GB).
#$ -l h_vmem=2G

# Run on y# of processors.
#$ -l np=8

# get fluent licenses.
module load ansys/17.1
export ANSYSLMD_LICENSE_FILE=1055@***.leeds.ac.uk

# Email me after execution of job.
#$ -m be
#$ -M issmcal@leeds.ac.uk

# Open Fluent and read input file.
# Use these options for versions of Fluent greater than 16.0
fluent 3ddp -g -i input -pib -sgeup -mpi=openmpi -rsh=ssh
# --------------------- End of script ----------------------

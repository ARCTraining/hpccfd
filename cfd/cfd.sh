#$ -cwd -V
#$ -l h_rt=00:15:00
#$ -pe ib 2

mpirun ./cfd 4 5000

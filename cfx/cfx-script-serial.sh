#$ -cwd -j y
#$ -l h_rt=0:20:00
#$ -l h_vmem=1500M
export ANSYSLMD_LICENSE_FILE=1055@***.leeds.ac.uk
module load ansys

cfx5solve -def BluntBody.def

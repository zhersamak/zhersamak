#!/bin/bash
#SBATCH --job-name=mn_rmatrix
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=1
#SBATCH --time=48:00:00
#SBATCH --account=PAS1866
#SBATCH --output=mn_rmatrix_%j.out
#SBATCH --error=mn_rmatrix_%j.err

cd /users/PAS1866/zhersamak29/rmatrix_Mn/parallel_mn

module load gcc/12.3.0
module load mvapich2/2.3.7-1

PYTHON=$HOME/python2/bin/python2.7
MPIEXEC=/apps/spack/0.21/ascend/linux-rhel9-zen2/mvapich2/gcc/12.3.0/2.3.7-1-urkr3ot/bin/mpiexec

$MPIEXEC -n 4 $PYTHON cs2_1.py > out1.log 2>&1 &
$MPIEXEC -n 4 $PYTHON cs2_2.py > out2.log 2>&1 &
$MPIEXEC -n 4 $PYTHON cs2_3.py > out3.log 2>&1 &
wait

echo "All done!"

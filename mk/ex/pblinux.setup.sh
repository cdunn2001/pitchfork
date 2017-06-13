module purge
module load git
module load gcc/4.9.2
#module load ccache
module load cmake
module load python
#module load boost
#module load zlib # IMPORTANT: Do NOT load this!
#module load hdf5-tools/1.8.16
export PREFIX=/scratch/cdunn/pf
export PYTHONUSERBASE=${PREFIX}
export CCACHE_DIR=$(pwd)/.git/ccache
export PIP_CACHE_DIR=$(pwd)/.git/pip
mkdir -p ${PREFIX}

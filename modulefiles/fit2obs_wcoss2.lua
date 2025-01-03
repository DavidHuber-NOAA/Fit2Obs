help([[
Build environment for fit2obs on WCOSS2
]])

prepend_path("MODULEPATH", "/apps/ops/test/spack-stack-1.6.0-nco/envs/nco-intel-19.1.3.304/install/modulefiles/Core")

local stack_python_ver=os.getenv("python_ver") or "3.10.13"
local stack_intel_ver=os.getenv("stack_intel_ver") or "19.1.3.304"
local stack_cray_mpich_ver=os.getenv("stack_cray_mpich_ver") or "8.1.9"
local cmake_ver=os.getenv("cmake_ver") or "3.23.1"

load(pathJoin("stack-intel", stack_intel_ver))
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))

pushenv("bufr_ver", "12.0.1")

load("fit2obs_common")

whatis("Description: fit2obs environment on WCOSS2 with Intel Compilers")

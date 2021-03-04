# Based on: https://github.com/intel/oneapi-containers/blob/31963c34e66819ec80ef6db9ec0a9a43a4b681c4/images/docker/basekit-devel-ubuntu18.04/Dockerfile
# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires os-tools image
ARG base_image="intel/oneapi:os-tools-ubuntu18.04"
FROM "$base_image"

ARG DEBIAN_FRONTEND=noninteractive
ARG APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

# install Intel(R) oneAPI Base Toolkit
RUN apt-get update -y && \
apt-get install -y --no-install-recommends -o=Dpkg::Use-Pty=0 \
intel-oneapi-compiler-dpcpp-cpp \
intel-oneapi-dpcpp-debugger \
intel-oneapi-runtime-opencl \
--

# setvars.sh environment variables
ENV ACL_BOARD_VENDOR_PATH='/opt/Intel/OpenCLFPGA/oneAPI/Boards' \
ADVISOR_2021_DIR='/opt/intel/oneapi/advisor/2021.1.2' \
APM='/opt/intel/oneapi/advisor/2021.1.2/perfmodels' \
CCL_ATL_TRANSPORT_PATH='/opt/intel/oneapi/ccl/2021.1.2/lib/cpu_gpu_dpcpp' \
CCL_CONFIGURATION='cpu_gpu_dpcpp' \
CCL_ROOT='/opt/intel/oneapi/ccl/2021.1.2' \
CLASSPATH='/opt/intel/oneapi/mpi/2021.1.2//lib/mpi.jar:/opt/intel/oneapi/dal/2021.1.2/lib/onedal.jar' \
CMAKE_PREFIX_PATH='/opt/intel/oneapi/vpl:/opt/intel/oneapi/tbb/2021.1.2/env/..:' \
CONDA_DEFAULT_ENV='base' \
CONDA_EXE='/opt/intel/oneapi/intelpython/latest/bin/conda' \
CONDA_PREFIX='/opt/intel/oneapi/intelpython/latest' \
CONDA_PROMPT_MODIFIER='(base) ' \
CONDA_PYTHON_EXE='/opt/intel/oneapi/intelpython/latest/bin/python' \
CONDA_SHLVL='1' \
CPATH='/opt/intel/oneapi/dpl/2021.1.2/linux/include:/opt/intel/oneapi/dev-utilities/2021.1.1/include:/opt/intel/oneapi/mpi/2021.1.2//include:/opt/intel/oneapi/mkl/latest/include:/opt/intel/oneapi/ccl/2021.1.2/include/cpu_gpu_dpcpp:/opt/intel/oneapi/compiler/2021.1.2/linux/include:/opt/intel/oneapi/ipp/2021.1.2/include:/opt/intel/oneapi/vpl/2021.1.2/include:/opt/intel/oneapi/dal/2021.1.2/include:/opt/intel/oneapi/dnnl/2021.1.2/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/ippcp/2021.1.2/include:/opt/intel/oneapi/tbb/2021.1.2/env/../include' \
DAALROOT='/opt/intel/oneapi/dal/2021.1.2' \
DALROOT='/opt/intel/oneapi/dal/2021.1.2' \
DAL_MAJOR_BINARY='1' \
DAL_MINOR_BINARY='0' \
DNNLROOT='/opt/intel/oneapi/dnnl/2021.1.2/cpu_dpcpp_gpu_dpcpp' \
FI_PROVIDER_PATH='/opt/intel/oneapi/mpi/2021.1.2//libfabric/lib/prov:/usr/lib64/libfabric' \
INFOPATH='/opt/intel/oneapi/debugger/10.0.0/documentation/info/' \
INTELFPGAOCLSDKROOT='/opt/intel/oneapi/compiler/2021.1.2/linux/lib/oclfpga' \
INTEL_PYTHONHOME='/opt/intel/oneapi/debugger/10.0.0/dep' \
IPPCP_TARGET_ARCH='intel64' \
IPPCRYPTOROOT='/opt/intel/oneapi/ippcp/2021.1.2' \
IPPROOT='/opt/intel/oneapi/ipp/2021.1.2' \
IPP_TARGET_ARCH='intel64' \
I_MPI_ROOT='/opt/intel/oneapi/mpi/2021.1.2' \
LD_LIBRARY_PATH='/opt/intel/oneapi/debugger/10.0.0/dep/lib:/opt/intel/oneapi/debugger/10.0.0/libipt/intel64/lib:/opt/intel/oneapi/debugger/10.0.0/gdb/intel64/lib:/opt/intel/oneapi/mpi/2021.1.2//libfabric/lib:/opt/intel/oneapi/mpi/2021.1.2//lib/release:/opt/intel/oneapi/mpi/2021.1.2//lib:/opt/intel/oneapi/mkl/latest/lib/intel64:/opt/intel/oneapi/ccl/2021.1.2/lib/cpu_gpu_dpcpp:/opt/intel/oneapi/compiler/2021.1.2/linux/lib:/opt/intel/oneapi/compiler/2021.1.2/linux/lib/x64:/opt/intel/oneapi/compiler/2021.1.2/linux/lib/emu:/opt/intel/oneapi/compiler/2021.1.2/linux/lib/oclfpga/host/linux64/lib:/opt/intel/oneapi/compiler/2021.1.2/linux/lib/oclfpga/linux64/lib:/opt/intel/oneapi/compiler/2021.1.2/linux/compiler/lib/intel64_lin:/opt/intel/oneapi/compiler/2021.1.2/linux/compiler/lib:/opt/intel/oneapi/ipp/2021.1.2/lib/intel64:/opt/intel/oneapi/vpl/2021.1.2/lib:/opt/intel/oneapi/dal/2021.1.2/lib/intel64:/opt/intel/oneapi/dnnl/2021.1.2/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/ippcp/2021.1.2/lib/intel64:/opt/intel/oneapi/tbb/2021.1.2/env/../lib/intel64/gcc4.8' \
LIBRARY_PATH='/opt/intel/oneapi/mpi/2021.1.2//libfabric/lib:/opt/intel/oneapi/mpi/2021.1.2//lib/release:/opt/intel/oneapi/mpi/2021.1.2//lib:/opt/intel/oneapi/mkl/latest/lib/intel64:/opt/intel/oneapi/ccl/2021.1.2/lib/cpu_gpu_dpcpp:/opt/intel/oneapi/compiler/2021.1.2/linux/compiler/lib/intel64_lin:/opt/intel/oneapi/compiler/2021.1.2/linux/lib:/opt/intel/oneapi/ipp/2021.1.2/lib/intel64:/opt/intel/oneapi/vpl/2021.1.2/lib:/opt/intel/oneapi/dal/2021.1.2/lib/intel64:/opt/intel/oneapi/dnnl/2021.1.2/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/ippcp/2021.1.2/lib/intel64:/opt/intel/oneapi/tbb/2021.1.2/env/../lib/intel64/gcc4.8' \
MANPATH='/opt/intel/oneapi/debugger/10.0.0/documentation/man:/opt/intel/oneapi/mpi/2021.1.2/man::/opt/intel/oneapi/compiler/2021.1.2/documentation/en/man/common::' \
MKLROOT='/opt/intel/oneapi/mkl/latest' \
NLSPATH='/opt/intel/oneapi/mkl/latest/lib/intel64/locale/%l_%t/%N' \
OCL_ICD_FILENAMES='libintelocl_emu.so:libalteracl.so:/opt/intel/oneapi/compiler/2021.1.2/linux/lib/x64/libintelocl.so' \
ONEAPI_ROOT='/opt/intel/oneapi' \
PATH='/opt/intel/oneapi/debugger/10.0.0/gdb/intel64/bin:/opt/intel/oneapi/dev-utilities/2021.1.2/bin:/opt/intel/oneapi/intelpython/latest/bin:/opt/intel/oneapi/intelpython/latest/condabin:/opt/intel/oneapi/mpi/2021.1.2/libfabric/bin:/opt/intel/oneapi/mpi/2021.1.2/bin:/opt/intel/oneapi/vtune/2021.1.2/bin64:/opt/intel/oneapi/mkl/latest/bin/intel64:/opt/intel/oneapi/compiler/2021.1.2/linux/lib/oclfpga/llvm/aocl-bin:/opt/intel/oneapi/compiler/2021.1.2/linux/lib/oclfpga/bin:/opt/intel/oneapi/compiler/2021.1.2/linux/bin/intel64:/opt/intel/oneapi/compiler/2021.1.2/linux/bin:/opt/intel/oneapi/compiler/2021.1.2/linux/ioc/bin:/opt/intel/oneapi/advisor/2021.1.2/bin64:/opt/intel/oneapi/vpl/2021.1.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' \
PKG_CONFIG_PATH='/opt/intel/oneapi/vtune/2021.1.2/include/pkgconfig/lib64:/opt/intel/oneapi/mkl/latest/tools/pkgconfig:/opt/intel/oneapi/advisor/2021.1.2/include/pkgconfig/lib64:' \
PYTHONPATH='/opt/intel/oneapi/advisor/2021.1.2/pythonapi' \
SETVARS_COMPLETED='1' \
TBBROOT='/opt/intel/oneapi/tbb/2021.1.2/env/..' \
VPL_BIN='/opt/intel/oneapi/vpl/2021.1.2/bin' \
VPL_INCLUDE='/opt/intel/oneapi/vpl/2021.1.2/include' \
VPL_LIB='/opt/intel/oneapi/vpl/2021.1.2/lib' \
VPL_ROOT='/opt/intel/oneapi/vpl/2021.1.2' \
VTUNE_PROFILER_2021_DIR='/opt/intel/oneapi/vtune/2021.1.2' \
_CE_CONDA='' \
_CE_M=''

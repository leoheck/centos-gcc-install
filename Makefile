# Makefile

# http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.14.tar.gz
# https://gmplib.org/download/gmp/gmp-6.0.0a.tar.bz2
# http://mpfr.loria.fr/mpfr-current/mpfr-3.1.4.tar.bz2
# http://www.multiprecision.org/mpc/download/mpc-1.0.2.tar.gz
# http://bugseng.com/products/ppl/download/ftp/releases/1.1/ppl-1.1.tar.bz2
# http://www.bastoul.net/cloog/pages/download/cloog-0.18.1.tar.gz
# http://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2
# http://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2
# http://sourceforge.net/projects/boost/files/boost/1.56.0/boost_1_56_0.tar.bz2

# Change this versions as YOU wish
 LIBCONV_VER = 1.14
     GMP_VER = 6.0.0a
    MPFR_VER = 3.1.4
     MPC_VER = 1.0.2
     PPL_VER = 1.1
   CLOOG_VER = 0.18.1
     GCC_VER = 4.9.1
BINUTILS_VER = 2.24
   BOOST_VER = 1_56_0

help:
	@ echo 
	@ echo CURRENT PACKAGES VERSIONS
	@ echo ==================================
	@ echo libiconv-$(LIBCONV_VER).tar.gz
	@ echo gmp-$(GMP_VER).tar.bz2
	@ echo mpfr-$(MPFR_VER).tar.bz2
	@ echo mpc-$(MPC_VER).tar.gz
	@ echo ppl-$(PPL_VER).tar.bz2
	@ echo cloog-$(_VCLOOG).tar.gz
	@ echo gcc-$(GCC_VER).tar.bz2
	@ echo binutils-$(BINUTILS_VER).tar.bz2
	@ echo boost_$(BOOST_VER).tar.bz2
	@ echo

.PHONY: build

build: 
	@ mkdir -p logs
	@ mkdir -p build
	bash bld.sh build 2>&1 | tee logs/bld-$$(date +'%Y%m%d-%H%M%S').log


clean-all:
	rm -rf bld src rtf archives logs

clean:
	rm -rf build bld src rtf *~

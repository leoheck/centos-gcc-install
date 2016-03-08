# Makefile

all: 
	@ mkdir logs
	@ mkdir build
	sh bld.sh build 2>&1 | tee logs/bld-$$(date +'%Y%m%d-%H%M%S').log

clean-all:
	rm -rf bld src rtf archives logs

clean:
	rm -rf build bld src rtf *~

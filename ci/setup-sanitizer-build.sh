#!/bin/sh

set -ex

if [ -f /usr/local/msan/include/mbedtls/sha1.h ]; then
	sudo sed -i -e 's/\/\/\(.*\)/\/\*\1 \*\//g' /usr/local/msan/include/mbedtls/sha1.h
fi

# Linux updated its ASLR randomization in a way that is incompatible with
# TSAN. See https://github.com/google/sanitizers/issues/1716
sudo sysctl vm.mmap_rnd_bits=28

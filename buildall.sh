#!/bin/bash
set -e

# MAKE
make clean && make && ./hello

# CMAKE
rm -rf bld && cmake . -Bbld && ( cd bld && make && ./hello )

rm -rf bazel-* buck-out

#BUCK
buck clean && buck build //... && buck-out/gen/hello

# BAZEL
bazel clean && bazel build //... && bazel-bin/hello

# PLEASE
plz build //.:hello && ./plz-out/bin/hello

# PANTS
CXX=cc ./pants compile .:hello && CXX=cc ./pants run .:hello

# Build with build2, assume b already in the PATH
rm hello && b && ./hello

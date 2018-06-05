#!/bin/bash
set -e
make clean && make && ./hello
rm -rf bld && cmake . -Bbld && ( cd bld && make && ./hello )
rm -rf bazel-* buck-out
buck clean && buck build //... && buck-out/gen/hello
bazel clean && bazel build //... && bazel-bin/hello
plz build //.:hello

CXX=cc ./pants compile .:hello && CXX=cc ./pants run .:hello

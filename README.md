## make

`make`

## cmake

`cmake` in a bld dir so we don't clobber the regular Makefile.

`cmake . -Bbld && cd bld && make`

## bazel

`bazel build //...`

## buck

`buck build //...`

## pants

`./pants compile .:hello --build-ignore=BUILD.bazel`

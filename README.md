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

`./pants compile .:hello`
n

## Buildstream
To build with make:

```
/path/to/buildstrema/contrib/bst-here
bst build make.bst
bst shell make.bst /usr/bin/hello
```


To build with cmake:
```
/path/to/buildstream/contrib/bst-here
bst build cmake.bst
bst shell cmake.bst /usr/bin/hello
```

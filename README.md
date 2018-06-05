To see how to build with all the different build systems please see `buildall.sh`.

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

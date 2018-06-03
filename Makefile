default: hello

hello: hello.c
	gcc $< -o $@


# elixir-syscall

Elixir package for invoking system calls, currently only supported on Linux,
but in future versions support will be added for other operating systems.

## Usage

First, compile the C NIF stubs in `c_src/`:

```
$ cd c_src
$ make
```

This has copied a `syscall.so` shared object to the `../lib/` folder.

Next, execute the test:

```
$ cd lib
$ iex syscall.ex
[...]
iex> Syscall.test
Hello, World!
$ echo $?
42
```

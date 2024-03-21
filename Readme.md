# High Performance Computing exercises

To simple build the project run

```sh
make
```

To clean all binary output just run

```sh
make clean
```

## Build w/ performance flags

```sh
make o0
make o1
make o2
make o3
make ofast
```

## Generate profiles

On standard linux environments `-pg` should generate profile files when run `./main`. But it does not work on Macos. YOU SHALL use `xctrace` from xcode. the follow commands would generate the same profile as `-pg`.

```sh
xctrace record --template "Time Profiler" --time-limit 20s --launch -- ./bin/main 1000
```

## Parallel compile

Unfortunately MacOS does not support parallel compile flags `-J` 😪
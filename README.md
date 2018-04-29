# abcde

Another Dockerfile for abcde based on ubuntu 16.04 since
https://github.com/rosstimson/docker-abcde
did not work anymore for me.

## Usage

### Build

Build the image with

```
$ ./build.sh
```

### Configure

Not all necessary packages are installed which are needed for every
possible configuration.
They just represent my preferences.

I included my working `.abcde.conf`.

### Run

```
$ ./abcde
```
to start the tool or
```
$ ./bash.sh
```
to get a bash in the container for
development of the Dockerfile, e.g.
adding more packages.

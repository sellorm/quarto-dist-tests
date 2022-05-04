# Quarto distribution tests

Runs a simple test using [Quarto](https://quarto.org) to determine whether it
will run on a variety of operating systems.

## Running the tests

You must first set the `QUARTO_VERSION` environment variable to the version you
want to test.

For example:

``` bash
export QUARTO_VERSION=0.9.315
```

The tests are run using a Makefile, so running `make` in the project directory
will build the required docker containers and then run the test in each.

``` bash
make
```

Once you have the docker containers built you can just run the tests if you
prefer.

``` bash
make test
```

Example output:

``` default
* opensuse_153 pass
* rocky_8 pass
* ubuntu_22.04 pass
* ubuntu_20.04 pass
* ubuntu_18.04 pass
* centos_7 fail
```

## About the tests

The tests themselves are very simple. We only test that Quarto properly
displays it's help, using the command `quarto --help`.

If this passes we record a pass, otherwise we record a fail.

This seems like a very superficial test, but given that Quarto is built on top
of [deno](https://deno.land), it gives us a good indication of whether the
bundled version of deno will run on the target distribution.


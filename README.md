# Housekeeping

## Tools

### find_open

Based on some home directories having had insecure permissions before, look for them in order to notify ZEDV if necessary.

`find_open` will usually only run on boxes at the physics department. You may force it everywhere else with `find_open -f`.

### dir_cleanup

Check for files & directories that have undesirable characters in them. This includes spaces, braces, umlauts, etc.

Clicking on the area above the file/directory list in the Nextcloud web client creates an empty Readme.md without much of a notification. Therefore also check if there are any of these files lying around.

`dir_cleanup` by default will run on `AGKOCHDIR`. When not otherwise specified the assumed path for that is `$HOME/Cloud/fubox/AG\ Koch`. But it is also possible to run the script on a directory provided as an argument:

```shell
dir_cleanup /path/to/some/directory
```

Another environment variable is `FUBOXDIR` which is used to shorten the path when running the script on the FUB Nextcloud. The assumed path is `$HOME/Cloud/fubox/`.

### Intel OneAPI modules

These are [modulefiles](https://modules.readthedocs.io/en/latest/modulefile.html) that allow to load/unload the Intel OneAPI tools, most importantly ifort.
Intel provides a collection of [modulefiles](https://www.intel.com/content/www/us/en/docs/oneapi/programming-guide/2023-0/use-modulefiles-with-linux.html) themselves. They however only work for the individual tools that make up OneAPI. So unless you need/want to fine-tune your environment and only use parts of OneAPI, the modulefiles in this repo should work as a one-size-fits-most solution.

There are two versions: `full` and `no-python`.
- The former is equivalent to sourcing the setup script in `/net/opt/intel-oneapi/setvars.sh` with the added benefit of allowing easy unload.
- The latter excludes the `intelpython` setup which is a python and conda setup maintained by the Intel Corporation. Since it might interfere with your own python/conda setup this is a way to just use the non-python parts of Intel OneAPI.

## Setup/Install

To install everything run

```
make
```

If you are just interested in the modulefiles:

**As of 2023-05-30 the modulefiles are now installed on workstations department-wide.**

**As of 2023-07-07 the modulefiles are now also available on the clusters `tron` and `sheldon`.**

**So unless any changes to these modulefiles become necessary *and* these changes don't end up in the ZEDV maintained directory, you can skip the following.**

```shell
make install-modules
```

In either case add the following line to your `~/.bashrc`:

```shell
export MODULEPATH=~/.modules:$MODULEPATH
```

This makes the modulefiles available for simple use with `module` `avail`/`load`/`unload`/`list`/etc.

## License
[ISC](https://opensource.org/licenses/ISC)

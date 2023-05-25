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

There are two versions: `full` and `no-python`:
	- The former is equivalent to sourcing the setup script in `/net/opt/intel-oneapi/setvars.sh` with the added benefit of allowing easy unload.
	- The latter exludes the `intelpython` setup which is a python and conda setup maintained by the Intel Corporation. Since it might interfere with your own python/conda setup this is a way to just use the non-python parts of Intel OneAPI.

## Setup/Install

To install everything run

```
make
```

If you are just interested in the modulefiles:

```shell
make install-modules
```

In either case add the following line to your `~/.bashrc`:

```shell
export MODULEPATH=$MODULEPATH:~/.modules
```

This makes the modulefiles available for simple use with `module` `avail`/`load`/`unload`/`list`/etc.

## License
[ISC](https://opensource.org/licenses/ISC)

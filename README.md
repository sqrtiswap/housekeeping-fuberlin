# Housekeeping

## Tools

### find_open

Based on some home directories having had insecure permissions before, look for them in order to notify ZEDV.

`find_open` will usually only run on boxes at the physics department. You may force it everywhere else with `find_open -f`.

### dir_cleanup
Check for files & directories that have undesirable characters in them. This includes spaces, braces, umlauts, etc.

Clicking on the area above the file/directory list in the Nextcloud web client creates an empty Readme.md without much of a notification. Therefore also check if there are any of these files.

`dir_cleanup` by default will run on `AGKOCHDIR`. When not otherwise specified the assumed path for that is `$HOME/Cloud/fubox/AG\ Koch`. But it is also possible to run the script on a directory provided as an argument:

```shell
$ dir_cleanup /path/to/some/directory
```

Another environment variable is `FUBOXDIR` which is used to shorten the path when running the script on the FUB Nextcloud. The assumed path is `$HOME/Cloud/fubox/`.

## License
[ISC](https://opensource.org/licenses/ISC)

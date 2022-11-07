# Housekeeping

## find_unprotected

Based on some home directories having had insecure permissions before look for them in order to notify ZEDV.

## fubox_cleanup
Check for files & directories in the fubox that have undesirable characters in them. This includes spaces, braces, umlauts, etc.

Clicking on the area above the file/directory list in the web client creates an empty Readme.md without much of a notification. Therefore also check if there are any of these files.

Unless you specify different locations via the environment variables `AGKOCHDIR` and `FUBOXDIR` the assumed paths are `$HOME/Cloud/fubox/AG\ Koch` and `$HOME/Cloud/fubox/` respectively.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[ISC](https://choosealicense.com/licenses/ISC/)

# Homebrew Tap

This tap contains the latest formula for the following apps:
- [cif](https://github.com/gesquive/cif) - 
formats PEM certificates in a nice human readable (mkcert.org) format
- [rip](https://github.com/gesquive/rip) - 
sends a text file line by line to a remote host/port
- [gop](https://github.com/gesquive/gop) - 
package your multi-os/arch executables
- [krypt](https://github.com/gesquive/krypt) -
encrypt or decrypt files using different ciphers
- [git-user](https://github.com/gesquive/git-user) - 
git plugin to save multiple user profiles and set them as repo defaults
- [paperless-uploader](https://github.com/gesquive/paperless-uploader) - 
watches a directory for files and uploads them to a paperless-ng instance


# Installing 

To install the tap, run:
```shell
$ brew tap gesquive/tap
```

After the tap is installed, you can install apps like any other brew formula:
```shell
$ brew install cig
```

You can search for the formulas in the tap with
```shell
$ brew search gesquive/tap
```

# Removing

To uninstall, run:
```shell
$ brew untap gesquive/tap
```

Note: removing the tap will not remove any formulas installed from that tap.

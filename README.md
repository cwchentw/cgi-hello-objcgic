# cgi-hello-objcgic

A Hello World program as an [objcgic](https://github.com/cwchentw/objcgic)-based CGI script.

## System Requirements

* Clang or GCC with Objective-C support
* GNUstep

It should work on Cocoa as well, though untested.

[cgic](https://github.com/boutell/cgic) itself is not needed because the repo bundles its snapshot.

## Usage

Clone the repo:

```
$ git clone https://github.com/cwchentw/cgi-hello-objc.git
```

Change the working directory to the root of *my-cgi-script*:

```
$ cd cgi-hello-objc
```

Compile the repo:

```
$ ./build
```

You need a HTTP server that supports CGI or FastCGI protocol to deploy this CGI script such as

* Apache with mod_fastcgi support
* Nginx and fcgiwrap combo

## Copyright

Copyright (c) 2020, Michael Chen. Licensed under MIT.

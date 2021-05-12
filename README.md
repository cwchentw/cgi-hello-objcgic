# cgi-hello-objcgic

A Hello World program as an [objcgic](https://github.com/cwchentw/objcgic)-based CGI script.

## System Requirements

* Clang or GCC with Objective-C support
* Cocoa or GNUstep

Test against GNUStep on openSUSE Leap 15.2. It should work on MacOS as well, though untested.

[cgic](https://github.com/boutell/cgic) itself is not needed because the repo bundles its snapshot.

## Usage

Clone the repo:

```
$ git clone https://github.com/cwchentw/cgi-hello-objcgic.git
```

Change the working directory to *cgi-hello-objcgic*:

```
$ cd cgi-hello-objcgic
```

Compile the repo:

```
$ ./build
```

You need a HTTP server that supports CGI or FastCGI protocol to deploy this CGI script such as

* Apache with mod_fastcgi support
* Nginx and fcgiwrap combo

Originally, cgic append two lines of newline to the header of a HTTP response. We may use multiple header informations in a response; therefore, we write our own `+status:message:` and `+contentType:` of `OCGIHeader` class. Now, the two messages only render one line of newline to standard output.

For better compatibility between libobjc and GNUstep, we use the libobjc of GCC on non-Apple platforms.

## Copyright

Copyright (c) 2020, Michael Chen. Licensed under MIT.

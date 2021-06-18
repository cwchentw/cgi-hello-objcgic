# cgi-hello-objcgic

A Hello World program as an [objcgic](https://github.com/cwchentw/objcgic)-based CGI script.

## System Requirements

* Clang or GCC with Objective-C support
* Cocoa or GNUstep

Tested against GNUStep on openSUSE Leap 15.2. It should work on MacOS as well.

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

Git will merge updated code automatically for you, which should not require any manual intervention. If any conflict bewteen code occurs, fix it by yourself.

## Project Parameters

* `CGI_PROGRAM`: The name of the CGI program, default to *index.cgi*
* `CGI_ENCODING`: The encoding of the CGI program, default to `NSUTF8StringEncoding`
* `GNUSTEP_INCLUDE`: The path of GNUstep headers, default to */usr/GNUstep/System/Library/Headers*
* `GNUSTEP_LIB`: The path of GNUstep libraries, default to */usr/GNUstep/System/Library/Libraries*

## Example

See [cgi-hello-objcgic](https://github.com/cwchentw/cgi-hello-objcgic).

## API Documentation

Pending.

## Note

You need a HTTP server that supports CGI or FastCGI protocol to deploy this CGI script such as

* Apache with mod_fastcgi support
* Nginx and fcgiwrap combo

Originally, cgic append two lines of newline to the header of a HTTP response. We may use multiple header informations in a response; therefore, we write our own `+status:message:` and `+contentType:` of `OCGIHeader` class. Now, the two messages only render one line of newline to standard output.

For better compatibility between libobjc and GNUstep, we use the libobjc of GCC on non-Apple platforms.

## Copyright

Copyright (c) 2020, Michelle Chen. Licensed under MIT.

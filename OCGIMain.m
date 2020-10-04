#import <Foundation/Foundation.h>
#import "OCGI.h"

#define PUTS(FORMAT, ...) \
    fprintf(stdout, "%s\n", \
        [[NSString stringWithFormat:\
            FORMAT, ##__VA_ARGS__] \
                UTF8String]);

int cgiMain(void)
{
    NSAutoreleasePool *pool = \
        [[NSAutoreleasePool alloc] init];
    if (!pool) {
        [OCGIHeader contentType: OCGI_MIME_TYPE_TXT];
        [OCGIHeader status: [NSNumber numberWithInt: 500]
            message: @"Internal Server Error"];
        PUTS(@"")  /* Extra newline. */

        PUTS(@"Internal Server Error");

        return 1;
    }

    [OCGIHeader contentType: OCGI_MIME_TYPE_TXT];
    PUTS(@"");  /* Extra newline. */

    PUTS(@"Hello World");

    [pool drain];

    return 0;
}
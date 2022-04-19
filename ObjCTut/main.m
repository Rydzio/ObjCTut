//
//  main.m
//  ObjCTut
//
//  Created by Michał Rytych on 19/04/2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // @autoreleasepool is responsible for dealocation of objects we don't need anymore
    // arc (automatic reference counting) automaticly signals for the destruction of objects when they're no longer needed
    @autoreleasepool {
        
    // location of the nil address
        NSString *nothing = nil;
        NSLog(@"Location of nil: %p ", nothing);
        
    // string length
        NSString *quote = @"Dogs have masters, while cats habe staff";
        NSLog(@"Size of the String: %d\n", (int) [quote length]);

        
    }
    return 0;
}

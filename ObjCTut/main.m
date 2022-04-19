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
        NSString *quote = @"Dogs have masters, while cats have staff";
        NSLog(@"Size of the String: %d\n", (int) [quote length]);

    // character picking
        NSLog(@"Character at index 5: %c", [quote characterAtIndex: 5]);
        
    // dynamic strings
        char *name = "Michal";
        NSString *myName = [NSString stringWithFormat:@"%s", name];
        NSLog(@"My name is %@\n", myName);
        
    // booleans
        BOOL isStringEqual = [myName isEqualToString: @"Michal"];
        printf("Are strings equal: %d\n", isStringEqual);
        
    // conversion
        const char *uCString = [[quote uppercaseString] UTF8String];
        printf("%s\n", uCString);
        
    // combine strings
        NSString *wholeQuote = [quote stringByAppendingString:myName];
        NSRange searchResult = [wholeQuote rangeOfString:@"Michal"];
        
        if (searchResult.location == NSNotFound) {
            NSLog(@"String not found");
        } else {
            printf("Michal is at index %lu and is %lu long\n", searchResult.location, searchResult.length);
        }
        
    // replace strings
        NSRange range = NSMakeRange(40, 6);
        const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range withString:@" - Anonym"]UTF8String];
        printf("%s\n", newQuote);
    }
    
    // mutable strings
        // create
    NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
    [groceryList appendFormat:@"%s", "Potato, Banana, Pasta"];
    NSLog(@"groceryList: %@", groceryList);
    
        // delete
    [groceryList deleteCharactersInRange:NSMakeRange(0, 8)];
    NSLog(@"groceryList: %@", groceryList);
    
        // insert
    [groceryList insertString:@", Apple" atIndex:13];
    NSLog(@"groceryList: %@", groceryList);
    
        // replace
    [groceryList replaceCharactersInRange:NSMakeRange(15, 5) withString:@"Orange"];
    NSLog(@"groceryList: %@", groceryList);
    
    // arrays
        // create array
    NSArray *officeSupplies = @[@"Pencils", @"Paper"];
    NSLog(@"First : %@", officeSupplies[0]);
    NSLog(@"Office Supples : %@", officeSupplies);
    
        // if array contains items
    BOOL containsItem = [officeSupplies containsObject:@"Pencils"];
    NSLog(@"Has Pencils : %d", containsItem);
    
        // number of items
    NSLog(@"Total: %d", (int) [officeSupplies count]);
    
        // get index of
    NSLog(@"Index of pencils is at %lu", (unsigned long) [officeSupplies indexOfObject:@"Pencils"]);
    
        // mutable array
    NSMutableArray *heroes = [NSMutableArray arrayWithCapacity:5];
        
        // add objects to mutable array
    [heroes addObject:@"Batman"];
    [heroes addObject:@"Flash"];
    [heroes addObject:@"Wonder Woman"];
    [heroes addObject:@"Kid Flash"];
    NSLog(@"%@", heroes);
    
        // insert object to mutable array at index
    [heroes insertObject:@"Superman" atIndex:2];
    NSLog(@"%@", heroes);
    
        // remove
    [heroes removeObject:@"Flash"]; // by object
    [heroes removeObjectAtIndex:0]; // by index
    [heroes removeObjectIdenticalTo:@"Superman" inRange:NSMakeRange(0, 1)]; // by range
    
        // iterate through the array
    for (int i = 0; i < [heroes count]; i++) {
        NSLog(@"%@", heroes[i]);
    }
    
    // objects
    
    
    return 0;
}

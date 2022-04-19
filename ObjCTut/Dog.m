//
//  Dog.m
//  ObjCTut
//
//  Created by Michał Rytych on 19/04/2022.
//

#import "Dog.h"

@implementation Dog

-(void) makeSound {
    NSLog(@"%@ says Woooof", self.name);
}

@end

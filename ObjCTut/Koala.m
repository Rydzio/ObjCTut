//
//  Koala.m
//  ObjCTut
//
//  Created by Michał Rytych on 19/04/2022.
//

#import "Koala.h"

@implementation Koala

-(NSString *) talkToMe:(NSString *)myName {
    NSString *response = [NSString stringWithFormat:@"Hello %@ says %@", myName, self.name];
    return response;
}

-(void) performTrick {
    NSLog(@"%@ performs a handstand", self.name);
}

-(void) makeSound {
    NSLog(@"%@ says Yawn", self.name);
}

@end

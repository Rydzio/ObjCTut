//
//  Animal.m
//  ObjCTut
//
//  Created by Michał Rytych on 19/04/2022.
//

#import "Animal.h"
#import "Animal+Vet.h"

@implementation Animal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"No Name";
    }
    return self;
}

-(instancetype) initWithName:(NSString *)defaultName
{
    self = [super init];
    if (self) {
        self.name = defaultName;
    }
    return self;
}

-(void) getInfo {
    NSLog(@"Random Info");
    [self getExamResults];
}

-(float) weightInKg: (float) weightInLbs {
    return weightInLbs * 0.4535;
}

-(NSString *) talkToMe: (NSString *)myName {
    NSString *response = [NSString stringWithFormat:@"Hello %@", myName];
    return response;
}

-(int) getSum: (int) num1 nextNumber: (int) num2 {
    return num1 + num2;
}

-(void) makeSound {
    NSLog(@"Grrrr");
}

@end

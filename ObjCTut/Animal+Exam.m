//
//  Animal+Exam.m
//  ObjCTut
//
//  Created by Michał Rytych on 19/04/2022.
//

#import "Animal+Exam.h"

@implementation Animal (Exam)

-(BOOL) checkedByVet {
    return 1;
}

-(void) getShots {
    NSLog(@"%@ got its shots", self.name);
}

@end

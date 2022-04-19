//
//  Koala.h
//  ObjCTut
//
//  Created by Michał Rytych on 19/04/2022.
//

#import "Animal.h"

NS_ASSUME_NONNULL_BEGIN

@interface Koala : Animal

-(NSString *) talkToMe:(NSString *)myName;
-(void) performTrick;
-(void) makeSound;

@end

NS_ASSUME_NONNULL_END

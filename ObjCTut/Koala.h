//
//  Koala.h
//  ObjCTut
//
//  Created by Michał Rytych on 19/04/2022.
//

#import "Animal.h"
#import "BeautyContest.h"

NS_ASSUME_NONNULL_BEGIN

@interface Koala : Animal <BeautyContest>

-(NSString *) talkToMe:(NSString *)myName;
-(void) performTrick;
-(void) makeSound;

@end

NS_ASSUME_NONNULL_END

//
//  Animal.h
//  ObjCTut
//
//  Created by Michał Rytych on 19/04/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property NSString *name;
@property NSString *favFood;
@property NSString *sound;

@property float weight;

-(instancetype) initWithName: (NSString*) defaultName;
-(void) getInfo;
-(float) weightInKg:(float) weightInLbs;
-(NSString *) talkToMe: (NSString *) myName;
-(int) getSum: (int) num1
   nextNumber: (int) num2;

@end

NS_ASSUME_NONNULL_END

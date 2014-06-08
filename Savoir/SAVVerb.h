//
//  SAVVerb.h
//  Savoir
//
//  Created by Joe Gibson on 6/3/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SAVVerbInstance.h"

@interface SAVVerb : NSObject

typedef enum SAVIndex_t
{
    IndicativePresentIndex =        0,
    IndicativePastSimpleIndex =     1,
    IndicativeImperfectIndex =      2,
    IndicativeFutureSimpleIndex =   3,
    IndicativeConditionalIndex =    4,
    SubjunctivePresentIndex =       5,
    SubjunctiveImperfectIndex =     6,
    ImperativePresentIndex =        7
    
}SAVIndex_t;

@property NSString *englishInfinitive;
@property NSString *frenchInfinitive;

@property NSString *presentParticiple;
@property NSString *pastParticiple;

@property NSArray *verbInstances;

- (BOOL)isValid;

@end

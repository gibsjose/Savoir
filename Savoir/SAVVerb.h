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

@property NSString *englishInfinitive;
@property NSString *frenchInfinitive;

@property NSString *presentParticiple;
@property NSString *pastParticiple;

@property SAVVerbInstance *indicativePresent;
@property SAVVerbInstance *indicativePastSimple;
@property SAVVerbInstance *indicativeImperfect;
@property SAVVerbInstance *indicativeFutureSimple;
@property SAVVerbInstance *indicativeConditional;

@property SAVVerbInstance *subjunctivePresent;
@property SAVVerbInstance *subjunctiveImperfect;

@property SAVVerbInstance *imperativePresent;

@end

//
//  SAVVerb.m
//  Savoir
//
//  Created by Joe Gibson on 6/3/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import "SAVVerb.h"

@implementation SAVVerb

@synthesize englishInfinitive = _englishInfinitive;
@synthesize frenchInfinitive = _frenchInfinitive;

@synthesize presentParticiple = _presentParticiple;
@synthesize pastParticiple = _pastParticiple;

@synthesize indicativePresent = _indicativePresent;
@synthesize indicativePastSimple = _indicativePastSimple;
@synthesize indicativeImperfect = _indicativeImperfect;
@synthesize indicativeFutureSimple = _indicativeFutureSimple;
@synthesize indicativeConditional = _indicativeConditional;

@synthesize subjunctivePresent = _subjunctivePresent;
@synthesize subjunctiveImperfect = _subjunctiveImperfect;

@synthesize imperativePresent = _imperativePresent;

- (id) init {
    
    if(self = [super init]) {
        _englishInfinitive = [NSString string];
        _frenchInfinitive = [NSString string];
    
        _presentParticiple = [NSString string];
        _pastParticiple = [NSString string];

        _indicativePresent = [[SAVVerbInstance alloc] initWithMood:Indicative tense:Present];
        _indicativePastSimple = [[SAVVerbInstance alloc] initWithMood:Indicative tense:PastSimple];
        _indicativeImperfect = [[SAVVerbInstance alloc] initWithMood:Indicative tense:Imperfect];
        _indicativeFutureSimple = [[SAVVerbInstance alloc] initWithMood:Indicative tense:FutureSimple];
        _indicativeConditional = [[SAVVerbInstance alloc] initWithMood:Indicative tense:Conditional];
        
        _subjunctivePresent = [[SAVVerbInstance alloc] initWithMood:Subjunctive tense:Present];
        _subjunctiveImperfect = [[SAVVerbInstance alloc] initWithMood:Subjunctive tense:Imperfect];
        
        _imperativePresent = [[SAVVerbInstance alloc] initWithMood:Imperative tense:Present];
    }
    
    return self;
}


@end

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

@synthesize verbInstances = _verbInstances;

- (id) init {
    
    if(self = [super init]) {
        _englishInfinitive = [NSString string];
        _frenchInfinitive = [NSString string];
    
        _presentParticiple = [NSString string];
        _pastParticiple = [NSString string];

        //Alloc and initialize all verb instance types
        SAVVerbInstance *indicativePresent = [[SAVVerbInstance alloc] initWithMood:Indicative tense:Present];
        SAVVerbInstance *indicativePastSimple = [[SAVVerbInstance alloc] initWithMood:Indicative tense:PastSimple];
        SAVVerbInstance *indicativeImperfect = [[SAVVerbInstance alloc] initWithMood:Indicative tense:Imperfect];
        SAVVerbInstance *indicativeFutureSimple = [[SAVVerbInstance alloc] initWithMood:Indicative tense:FutureSimple];
        SAVVerbInstance *indicativeConditional = [[SAVVerbInstance alloc] initWithMood:Indicative tense:Conditional];
        SAVVerbInstance *subjunctivePresent = [[SAVVerbInstance alloc] initWithMood:Subjunctive tense:Present];
        SAVVerbInstance *subjunctiveImperfect = [[SAVVerbInstance alloc] initWithMood:Subjunctive tense:Imperfect];
        SAVVerbInstance *imperativePresent = [[SAVVerbInstance alloc] initWithMood:Imperative tense:Present];
        
        //Initialize verb instance array
        _verbInstances = [[NSArray alloc] initWithObjects:
                          (SAVVerbInstance *)indicativePresent,
                          (SAVVerbInstance *)indicativePastSimple,
                          (SAVVerbInstance *)indicativeImperfect,
                          (SAVVerbInstance *)indicativeFutureSimple,
                          (SAVVerbInstance *)indicativeConditional,
                          (SAVVerbInstance *)subjunctivePresent,
                          (SAVVerbInstance *)subjunctiveImperfect,
                          (SAVVerbInstance *)imperativePresent,
                          nil];
    }
    
    return self;
}

- (BOOL)isValid {
    int count = 0;
    
    //Check english infinitive
    if (![_englishInfinitive isEqualToString:@""]) {
        count++;
    }
    
    if (![_frenchInfinitive isEqualToString:@""]) {
        count++;
    }
    
    if (![_presentParticiple isEqualToString:@""]) {
        count++;
    }
    
    if (![_pastParticiple isEqualToString:@""]) {
        count++;
    }
    
    //Check all moods/tenses
    for (int i = 0; i < 8; i++) {
        if ([[_verbInstances objectAtIndex:i] isValid]) {
            count++;
        }
    }
    
    if (count >= 12) {
        return YES;
    }
    else {
        return NO;
    }
}

@end

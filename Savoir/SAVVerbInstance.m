//
//  SAVVerbInstance.m
//  Savoir
//
//  Created by Joe Gibson on 6/3/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import "SAVVerbInstance.h"

@implementation SAVVerbInstance

@synthesize valid = _valid;

@synthesize je = _je;
@synthesize tu = _tu;
@synthesize il = _il;
@synthesize nous = _nous;
@synthesize vous = _vous;
@synthesize ils = _ils;

@synthesize mood = _mood;
@synthesize tense = _tense;

- (id)init {
    
    if (self = [super init]) {
        _valid = false;
        
        _je = [NSString string];
        _tu = [NSString string];
        _il = [NSString string];
        _nous = [NSString string];
        _vous = [NSString string];
        _ils = [NSString string];
        
        _mood = Indicative;
        _tense = Present;
    }
    
    return self;
}

- (id)initWithMood:(SAVMood_t)mood tense:(SAVTense_t)tense {
    
    if (self = [self init]) {
        _mood = mood;
        _tense = tense;
    }
    
    return self;
}

- (BOOL)isValid {
    int count = 0;
    
    if (![_je isEqualToString:@""]) {
        count++;
    }
    else if (_mood == Imperative)
    {
        count++;
    }
    
    if (![_tu isEqualToString:@""]) {
        count++;
    }
    
    if (![_il isEqualToString:@""]) {
        count++;
    }
    else if (_mood == Imperative)
    {
        count++;
    }
    
    if (![_nous isEqualToString:@""]) {
        count++;
    }
    
    if (![_vous isEqualToString:@""]) {
        count++;
    }
    
    if (![_ils isEqualToString:@""]) {
        count++;
    }
    else if (_mood == Imperative)
    {
        count++;
    }
    
    if (count >= 6) {
        return YES;
    }
    else {
        return NO;
    }
}

@end

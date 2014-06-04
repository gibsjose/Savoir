//
//  SAVVerbInstance.h
//  Savoir
//
//  Created by Joe Gibson on 6/3/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SAVVerbInstance : NSObject

typedef enum SAVMood_t
{
    Indicative,
    Subjunctive,
    Imperative
    
}SAVMood_t;

typedef enum SAVTense_t
{
    Present,
    PastSimple,
    Imperfect,
    FutureSimple,
    Conditional
    
}SAVTense_t;

@property NSString *je;
@property NSString *tu;
@property NSString *il;
@property NSString *nous;
@property NSString *vous;
@property NSString *ils;

@property SAVMood_t mood;
@property SAVTense_t tense;

- (id)initWithMood:(SAVMood_t)mood tense:(SAVTense_t)tense;

@end

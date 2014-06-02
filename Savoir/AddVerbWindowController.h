//
//  AddVerbWindowController.h
//  Savoir
//
//  Created by Joe Gibson on 6/2/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AddVerbWindowController : NSWindowController
{
    NSString *english;
    NSString *infinitive;
    NSString *je;
    NSString *tu;
    NSString *il;
    NSString *nous;
    NSString *vous;
    NSString *ils;
    
    int fieldsFilled;
}

@property (weak) IBOutlet NSTextField *englishTextField;
@property (weak) IBOutlet NSTextField *infinitiveTextField;
@property (weak) IBOutlet NSTextField *jeTextField;
@property (weak) IBOutlet NSTextField *tuTextField;
@property (weak) IBOutlet NSTextField *ilTextField;
@property (weak) IBOutlet NSTextField *nousTextField;
@property (weak) IBOutlet NSTextField *vousTextField;
@property (weak) IBOutlet NSTextField *ilsTextField;

- (IBAction)addVerbButton:(id)sender;

@end

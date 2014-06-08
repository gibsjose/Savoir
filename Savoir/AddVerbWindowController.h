//
//  AddVerbWindowController.h
//  Savoir
//
//  Created by Joe Gibson on 6/2/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SAVVerb.h"
#import "sqlite3.h"

@interface AddVerbWindowController : NSWindowController
{
    SAVVerb *Verb;
    NSString *VerbDatabasePath;
    NSString *VerbInstanceDatabasePath;
    sqlite3 *VerbDatabase;
    sqlite3 *VerbInstanceDatabase;
}

@property (weak) IBOutlet NSPopUpButton *moodList;
@property (weak) IBOutlet NSPopUpButton *tenseList;

@property (weak) IBOutlet NSTextField *englishInfinitiveTextField;
@property (weak) IBOutlet NSTextField *frenchInfinitiveTextField;
@property (weak) IBOutlet NSTextField *presentParticipleTextField;
@property (weak) IBOutlet NSTextField *pastParticipleTextField;
@property (weak) IBOutlet NSTextField *jeTextField;
@property (weak) IBOutlet NSTextField *tuTextField;
@property (weak) IBOutlet NSTextField *ilTextField;
@property (weak) IBOutlet NSTextField *nousTextField;
@property (weak) IBOutlet NSTextField *vousTextField;
@property (weak) IBOutlet NSTextField *ilsTextField;

- (IBAction)moodListAction:(id)sender;
- (IBAction)tenseListAction:(id)sender;

- (IBAction)addVerbButton:(id)sender;

- (void) addVerb:(SAVVerb *)verb toDatabase:(sqlite3 **)database;

@end

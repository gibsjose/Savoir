//
//  MainWindowController.h
//  Savoir
//
//  Created by Joe Gibson on 6/2/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class AddVerbWindowController;
@class AddVocabWindowController;
@class ExploreWindowController;
@class TestMeWindowController;

@interface MainWindowController : NSWindowController
{
    AddVerbWindowController *addVerbWindowController;
    AddVocabWindowController *addVocabWindowController;
    
    ExploreWindowController *exploreWindowController;
    TestMeWindowController *testMeWindowController;
}

- (IBAction)addVerbButton:(id)sender;
- (IBAction)addVocabButton:(id)sender;

- (IBAction)exploreButton:(id)sender;
- (IBAction)testMeButton:(id)sender;

- (IBAction)quit:(id)sender;

@end

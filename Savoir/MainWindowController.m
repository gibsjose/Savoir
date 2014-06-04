//
//  MainWindowController.m
//  Savoir
//
//  Created by Joe Gibson on 6/2/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import "MainWindowController.h"
#import "AddVerbWindowController.h"
#import "AddVocabWindowController.h"
#import "ExploreWindowController.h"
#import "TestMeWindowController.h"

@interface MainWindowController ()

@end

@implementation MainWindowController

- (id)init
{
    return [super initWithWindowNibName: @"MainWindow"];
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)addVerbButton:(id)sender {
    //Initialize and display the add verb window
    addVerbWindowController = [[AddVerbWindowController alloc] init];
    [addVerbWindowController showWindow:nil];
}

- (IBAction)addVocabButton:(id)sender {
    //Initialize and display the add vocab window
    addVocabWindowController = [[AddVocabWindowController alloc] init];
    [addVocabWindowController showWindow:nil];
}

- (IBAction)exploreButton:(id)sender {
    //Initialize and display the explore window
    exploreWindowController = [[ExploreWindowController alloc] init];
    [exploreWindowController showWindow:nil];
}

- (IBAction)testMeButton:(id)sender {
    //Initialize and display the test me window
    testMeWindowController = [[TestMeWindowController alloc] init];
    [testMeWindowController showWindow:nil];
}

- (IBAction)quit:(id)sender {
    
    //Quit Application
    exit(0);
}

@end

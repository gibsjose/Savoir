//
//  AppDelegate.m
//  Savoir
//
//  Created by Joe Gibson on 6/1/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowController.h"
#import "AddVerbWindowController.h"
#import "AddVocabWindowController.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    //Initialize and display the main window
    mainWindowController = [[MainWindowController alloc] init];
    [mainWindowController showWindow:nil];
    
    
}

@end

//
//  AppDelegate.h
//  Savoir
//
//  Created by Joe Gibson on 6/1/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MainWindowController;
@class AddVerbWindowController;
@class AddVocabWindowController;

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    MainWindowController *mainWindowController;
    AddVerbWindowController *addVerbWindowController;
    AddVocabWindowController *addVocabWindowController;
}

@end

//
//  GibsjoseButton.m
//  Savoir
//
//  Created by Joe Gibson on 6/3/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import "GibsjoseButton.h"

@implementation GibsjoseButton

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

//@TODO Override mouseOver and !mouseOver methods instead

- (void)mouseDown:(NSEvent *)theEvent
{
    NSImage *image = [NSImage imageNamed:@"gibsjose-pressed-150x88.png"];
    
    [self setImage:image];
}

- (void)mouseUp:(NSEvent *)theEvent
{
    NSImage *image = [NSImage imageNamed:@"gibsjose-150x88.png"];
    
    [self setImage:image];
    
    //Go to URL
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://www.gibsjose.com/projects.html"]];
}

@end

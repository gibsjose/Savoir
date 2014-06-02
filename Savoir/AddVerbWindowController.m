//
//  AddVerbWindowController.m
//  Savoir
//
//  Created by Joe Gibson on 6/2/14.
//  Copyright (c) 2014 gibsjose. All rights reserved.
//

#import "AddVerbWindowController.h"

@interface AddVerbWindowController ()

@end

@implementation AddVerbWindowController

@synthesize englishTextField = _englishTextField;
@synthesize infinitiveTextField = _infinitiveTextField;
@synthesize jeTextField = _jeTextField;
@synthesize tuTextField = _tuTextField;
@synthesize ilTextField = _ilTextField;
@synthesize nousTextField = _nousTextField;
@synthesize vousTextField = _vousTextField;
@synthesize ilsTextField = _ilsTextField;

- (id)init
{
    return [super initWithWindowNibName: @"AddVerbWindow"];
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    fieldsFilled = 0;
}

- (IBAction)addVerbButton:(id)sender {
    
    fieldsFilled = 0;

    if([_englishTextField.stringValue isEqualToString:@""])
    {
        //_englishTextField.backgroundColor = [NSColor redColor];
    }
    else
    {
        _englishTextField.backgroundColor = [NSColor whiteColor];
        
        english = [_englishTextField stringValue];
        
        fieldsFilled++;
    }
    
    if([_infinitiveTextField.stringValue isEqualToString:@""])
    {
        //_infinitiveTextField.backgroundColor = [NSColor redColor];
    }
    else
    {
        _infinitiveTextField.backgroundColor = [NSColor whiteColor];
        
        infinitive = [_infinitiveTextField stringValue];
        
        fieldsFilled++;
    }
    
    if([_jeTextField.stringValue isEqualToString:@""])
    {
        //_jeTextField.backgroundColor = [NSColor redColor];
    }
    else
    {
        _jeTextField.backgroundColor = [NSColor whiteColor];
        
        je = [_jeTextField stringValue];
        
        fieldsFilled++;
    }
    
    if([_tuTextField.stringValue isEqualToString:@""])
    {
        //_tuTextField.backgroundColor = [NSColor redColor];
    }
    else
    {
        _tuTextField.backgroundColor = [NSColor whiteColor];
        
        tu = [_tuTextField stringValue];
        
        fieldsFilled++;
    }
    
    if([_ilTextField.stringValue isEqualToString:@""])
    {
        //_ilTextField.backgroundColor = [NSColor redColor];
    }
    else
    {
        _ilTextField.backgroundColor = [NSColor whiteColor];
        
        il = [_ilTextField stringValue];
        
        fieldsFilled++;
    }
    
    if([_nousTextField.stringValue isEqualToString:@""])
    {
        //_nousTextField.backgroundColor = [NSColor redColor];
    }
    else
    {
        _nousTextField.backgroundColor = [NSColor whiteColor];
        
        nous = [_nousTextField stringValue];
        
        fieldsFilled++;
    }
    
    if([_vousTextField.stringValue isEqualToString:@""])
    {
        //_vousTextField.backgroundColor = [NSColor redColor];
    }
    else
    {
        _vousTextField.backgroundColor = [NSColor whiteColor];
        
        vous = [_vousTextField stringValue];
        
        fieldsFilled++;
    }
    
    if([_ilsTextField.stringValue isEqualToString:@""])
    {
        //_ilsTextField.backgroundColor = [NSColor redColor];
    }
    else
    {
        _ilsTextField.backgroundColor = [NSColor whiteColor];
        
        ils = [_ilsTextField stringValue];
        
        fieldsFilled++;
    }
    
    if (fieldsFilled == 8) {
        
        //Check database for exact match
        
        //If exact match, alert user that it already exists and do nothing
        
        //If partial match, alert user to update or cancel
        
        //If no match, add new verb to database
        
            //Popup Window:  Manger (To eat)
            //                   Added!
            //              <Green Check Mark>
        
        //Reset all fields, instance variables, field count
        fieldsFilled = 0;
        
        _englishTextField.stringValue = @"";
        _infinitiveTextField.stringValue = @"";
        _jeTextField.stringValue = @"";
        _tuTextField.stringValue = @"";
        _ilTextField.stringValue = @"";
        _nousTextField.stringValue = @"";
        _vousTextField.stringValue = @"";
        _ilsTextField.stringValue = @"";
        
        english = @"";
        infinitive = @"";
        je = @"";
        tu = @"";
        il = @"";
        nous = @"";
        vous = @"";
        ils = @"";
    }
}

@end

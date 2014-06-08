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

@synthesize moodList = _moodList;
@synthesize tenseList = _tenseList;

@synthesize englishInfinitiveTextField = _englishInfinitiveTextField;
@synthesize frenchInfinitiveTextField = _frenchInfinitiveTextField;
@synthesize presentParticipleTextField = _presentParticipleTextField;
@synthesize pastParticipleTextField = _pastParticipleTextField;
@synthesize jeTextField = _jeTextField;
@synthesize tuTextField = _tuTextField;
@synthesize ilTextField = _ilTextField;
@synthesize nousTextField = _nousTextField;
@synthesize vousTextField = _vousTextField;
@synthesize ilsTextField = _ilsTextField;

typedef enum MoodMenuItemIndex_t
{
    IndicativeMoodIndex = 0,
    SubjunctiveMoodIndex = 1,
    ImperativeMoodIndex = 2
}MoodMenuItemIndex_t;

typedef enum TenseMenuItemIndex_t
{
    PresentTenseIndex = 0,
    PastSimpleTenseIndex = 1,
    ImperfectTenseIndex = 2,
    FuturePerfectTenseIndex = 3,
    ConditionalTenseIndex = 4
}TenseMenuItemIndex_t;

- (id)init
{
    return [super initWithWindowNibName: @"AddVerbWindow"];
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    //Create empty verb
    Verb = [[SAVVerb alloc] init];
    
    //Define verb and verb index databases
    [self defineVerbDatabase];
    [self defineVerbInstanceDatabase];
}

- (void) resetVerb {
    Verb = [[SAVVerb alloc] init];
}

- (void) resetTextFields {
    _englishInfinitiveTextField.stringValue = @"";
    _frenchInfinitiveTextField.stringValue = @"";
    _presentParticipleTextField.stringValue = @"";
    _pastParticipleTextField.stringValue = @"";
    _jeTextField.stringValue = @"";
    _tuTextField.stringValue = @"";
    _ilTextField.stringValue = @"";
    _nousTextField.stringValue = @"";
    _vousTextField.stringValue = @"";
    _ilsTextField.stringValue = @"";
}

- (void) defineVerbDatabase {
    NSString *docDir;
    NSArray *dirPaths;
    
    //Get document directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    docDir = [dirPaths objectAtIndex:0];
    
    //Get database filepath
    VerbDatabasePath = [[NSString alloc] initWithString:[docDir stringByAppendingPathComponent:@"verbs.db"]];
    
    const char *dbpath = [VerbDatabasePath UTF8String];
    
    if (sqlite3_open(dbpath, &VerbDatabase) == SQLITE_OK) {
        char *errorMessage;
        const char *sql_statement = "CREATE TABLE IF NOT EXISTS VERBS (ID INTEGER PRIMARY KEY AUTOINCREMENT, ENGLISH TEXT, FRENCH TEXT, PRESENTPART TEXT, PASTPART TEXT, NOTES TEXT)";
        
        sqlite3_exec(VerbDatabase, sql_statement, NULL, NULL, &errorMessage);
        sqlite3_close(VerbDatabase);
    }
}

- (void) defineVerbInstanceDatabase {
    NSString *docDir;
    NSArray *dirPaths;
    
    //Get document directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    docDir = [dirPaths objectAtIndex:0];
    
    //Get database filepath
    VerbInstanceDatabasePath = [[NSString alloc] initWithString:[docDir stringByAppendingPathComponent:@"verbInstances.db"]];
    
    const char *dbpath = [VerbInstanceDatabasePath UTF8String];
    
    if (sqlite3_open(dbpath, &VerbInstanceDatabase) == SQLITE_OK) {
        char *errorMessage;
        const char *sql_statement = "CREATE TABLE IF NOT EXISTS VERBINSTANCES (ID INTEGER PRIMARY KEY AUTOINCREMENT, FRENCH TEXT, JE TEXT, TU TEXT, IL TEXT, NOUS TEXT, VOUS TEXT, ILS TEXT)";
        
        sqlite3_exec(VerbInstanceDatabase, sql_statement, NULL, NULL, &errorMessage);
        sqlite3_close(VerbInstanceDatabase);
    }
}

//Add the verb's english and french infinitive, present and past participle, and any notes to the verb database
// and add each verb instance with the associated french infinititve to the verb instance database
- (void) addVerb:(SAVVerb *)verb toDatabase:(sqlite3 **)database {
    
    sqlite3_stmt *verbStatement;
    sqlite3_stmt *verbInstanceStatement;
    
    const char *verbDBPath = [VerbDatabasePath UTF8String];
    const char *verbInstanceDBPath = [VerbInstanceDatabasePath UTF8String];
    
    if (sqlite3_open(verbDBPath, &VerbDatabase) == SQLITE_OK) {
        NSString *insert = [NSString stringWithFormat:@"INSERT INTO VERBS (english, french, presentpart, pastpart, notes) VALUES (\"%@\", \"%@\", \"%@\", \"%@\", \"%@\")", verb.englishInfinitive, verb.frenchInfinitive, verb.presentParticiple, verb.pastParticiple, @""];
        
        const char *insert_statement = [insert UTF8String];
        
        sqlite3_prepare_v2(VerbDatabase, insert_statement, -1, &verbStatement, NULL);
        sqlite3_step(verbStatement);
        sqlite3_finalize(verbStatement);
        sqlite3_close(VerbDatabase);
    }
    
    if (sqlite3_open(verbInstanceDBPath, &VerbInstanceDatabase) == SQLITE_OK) {
        
        for (int i = 0; i < 8; i++) {
            NSString *insert = [NSString stringWithFormat:@"INSERT INTO VERBINSTANCES (french, je, tu, il, nous, vous, ils) VALUES (\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\")", verb.frenchInfinitive, [[verb.verbInstances objectAtIndex:i] je], [[verb.verbInstances objectAtIndex:i] tu], [[verb.verbInstances objectAtIndex:i] il], [[verb.verbInstances objectAtIndex:i] nous], [[verb.verbInstances objectAtIndex:i] vous], [[verb.verbInstances objectAtIndex:i] ils]];
            
            const char *insert_statement = [insert UTF8String];
            
            sqlite3_prepare_v2(VerbInstanceDatabase, insert_statement, -1, &verbInstanceStatement, NULL);
            sqlite3_step(verbInstanceStatement);
            sqlite3_finalize(verbInstanceStatement);
        }
    
        sqlite3_close(VerbInstanceDatabase);
    }
}

//@TODO Finish this...
- (BOOL) database:(sqlite3 **)database hasExactMatchOf:(SAVVerb *)verb {
    return NO;
}

//@TODO Finish this...
- (BOOL) database:(sqlite3 **)database hasPartialMatchOf:(SAVVerb *)verb {
    return NO;
}

- (IBAction)moodListAction:(id)sender {
    //Enable/Disable tenses based on mood
    if ([[_moodList selectedItem] tag] == IndicativeMoodIndex) {
        //Enable all tenses
    }
    
    if ([[_moodList selectedItem] tag] == SubjunctiveMoodIndex) {
        //Enable only present and imperfect tenses
        
        //Disable all but present and imperfect
        
        //Select present by default
    }
    
    if ([[_moodList selectedItem] tag] == IndicativeMoodIndex) {
        //Enable only present tense
        
        //Disable all but present
        
        //Select present
    }
}

- (IBAction)tenseListAction:(id)sender {
    //Shouldn't need to do anything here...
}

- (IBAction)addVerbButton:(id)sender {
    
    //Set English and French infinitive
    [Verb setEnglishInfinitive:[_englishInfinitiveTextField stringValue]];
    [Verb setFrenchInfinitive:[_frenchInfinitiveTextField stringValue]];
    
    //Set present and past participle
    [Verb setPresentParticiple:[_presentParticipleTextField stringValue]];
    [Verb setPastParticiple:[_pastParticipleTextField stringValue]];

    //Check if the verb is valid
    if ([Verb isValid]) {
        //Check database for exact match
        
        //If exact match, alert user that it already exists and do nothing
        if ([self database:&VerbDatabase hasExactMatchOf:Verb]) {
            //Display 'Verb Already Exists' popup
        }
        
        //If partial match, alert user to update or cancel
        else if ([self database:&VerbDatabase hasPartialMatchOf:Verb]) {
            //Display 'Verb Partially Exists' popup, prompting user to update or cancel
        }
        
        //If no match, add new verb to database
        else {
            [self addVerb:Verb toDatabase:&VerbDatabase];
        
            //Popup Window:  Manger (To eat)
            //                   Added!
            //              <Green Check Mark>
            
            //Reset the verb and text fields
            [self resetVerb];
            [self resetTextFields];
            
            //Close current window and open new window
        }
    }
}

@end

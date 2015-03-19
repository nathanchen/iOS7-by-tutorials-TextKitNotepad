//
//  Note.m
//  TextKitNotepad
//
//  Created by Nate on 19/03/2015.
//  Copyright (c) 2015 Nathan CHEN. All rights reserved.
//

#import "Note.h"

@implementation Note

- (NSString *)title
{
    return [[_contents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] objectAtIndex:0];
}

- (instancetype)initWithText: (NSString *)text
{
    self = [super init];
    if (self)
    {
        _contents = text;
        _timestamp = [NSDate date];
    }
    return self;
}

@end

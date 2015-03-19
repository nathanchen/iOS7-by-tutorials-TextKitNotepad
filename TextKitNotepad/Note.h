//
//  Note.h
//  TextKitNotepad
//
//  Created by Nate on 19/03/2015.
//  Copyright (c) 2015 Nathan CHEN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Note : NSObject

@property (nonatomic, weak) NSString *contents;
@property (nonatomic, weak) NSDate *timestamp;
@property (nonatomic, weak) NSString *title;

- (instancetype)initWithText: (NSString *)text;

@end

//
//  NoteEditorViewController.h
//  TextKitNotepad
//
//  Created by Nate on 19/03/2015.
//  Copyright (c) 2015 Nathan CHEN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Note.h"

@interface NoteEditorViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic) Note *note;

@end

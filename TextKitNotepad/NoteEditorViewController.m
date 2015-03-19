//
//  NoteEditorViewController.m
//  TextKitNotepad
//
//  Created by Nate on 19/03/2015.
//  Copyright (c) 2015 Nathan CHEN. All rights reserved.
//

#import "NoteEditorViewController.h"

@interface NoteEditorViewController ()

@end

@implementation NoteEditorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _textView.text = _note.contents;
    _textView.delegate = self;
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    _note.contents = textView.text;
}


@end

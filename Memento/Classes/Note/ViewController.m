//
//  ViewController.m
//  Memento
//
//  Created by Yura Savchuk on 05.02.18.
//  Copyright © 2018 Coulcod. All rights reserved.
//

#import "ViewController.h"
#import "NoteEntity.h"
#import "NoteCreataker.h"

@interface ViewController () <UITextFieldDelegate, UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *btnSave;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *btnRestore;

@property (weak, nonatomic) IBOutlet UITextField *tfTitle;
@property (weak, nonatomic) IBOutlet UITextView *tvText;

@property (nonatomic, strong) NoteCreataker *creataker;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.btnRestore.enabled = NO;
    self.creataker = [NoteCreataker new];
}

- (NoteEntity *)getNoteEntity
{
    NoteEntity *note = [NoteEntity new];
    note.title = self.tfTitle.text;
    note.text = self.tvText.text;
    return note;
}

- (void)setNoteEntity:(NoteEntity *)note
{
    self.tfTitle.text = note.title;
    self.tvText.text = note.text;
}

- (IBAction)didTouchSaveButton:(id)sender
{
    NoteEntity *note = [self getNoteEntity];
    self.creataker.memento = [note getState];
    self.btnRestore.enabled = YES;
}

- (IBAction)didTouchRestoreButton:(id)sender
{
    NoteEntity *note = [NoteEntity new];
    [note restoreToState:self.creataker.memento];
    [self setNoteEntity:note];
}

@end

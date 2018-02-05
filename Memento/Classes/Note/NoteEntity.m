//
//  NoteEntity.m
//  Memento
//
//  Created by Yura Savchuk on 05.02.18.
//  Copyright © 2018 Coulcod. All rights reserved.
//

#import "NoteEntity.h"

@implementation NoteEntity

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.title = @"";
        self.text = @"";
    }
    return self;
}

- (NoteMemento *)getState
{
    return [[NoteMemento alloc] initWithTitle:self.title text:self.text];
}

- (void)restoreToState:(NoteMemento *)memento
{
    self.title = memento.title;
    self.text = memento.text;
}

@end

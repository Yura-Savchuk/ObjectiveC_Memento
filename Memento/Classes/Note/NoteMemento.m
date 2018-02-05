//
//  NoteMemento.m
//  Memento
//
//  Created by Yura Savchuk on 05.02.18.
//  Copyright © 2018 Coulcod. All rights reserved.
//

#import "NoteMemento.h"

@interface NoteMemento()

@property (nonatomic, strong, readwrite) NSString *title;
@property (nonatomic, strong, readwrite) NSString *text;

@end

@implementation NoteMemento

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    self = [super init];
    if (self)
    {
        self.title = title;
        self.text = text;
    }
    return self;
}

@end

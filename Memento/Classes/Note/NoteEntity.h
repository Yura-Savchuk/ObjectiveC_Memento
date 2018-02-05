//
//  NoteEntity.h
//  Memento
//
//  Created by Yura Savchuk on 05.02.18.
//  Copyright © 2018 Coulcod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NoteMemento.h"

@interface NoteEntity : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;

- (NoteMemento *)getState;
- (void)restoreToState:(NoteMemento *)memento;

@end

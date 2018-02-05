//
//  NoteCreataker.h
//  Memento
//
//  Created by Yura Savchuk on 05.02.18.
//  Copyright © 2018 Coulcod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NoteMemento.h"

@interface NoteCreataker : NSObject

@property (nonatomic, strong) NoteMemento *memento;

@end

//
//  NoteMemento.h
//  Memento
//
//  Created by Yura Savchuk on 05.02.18.
//  Copyright © 2018 Coulcod. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NoteMemento : NSObject

@property (nonatomic, strong, readonly) NSString *title;
@property (nonatomic, strong, readonly) NSString *text;

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@end

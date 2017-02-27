//
//  Model+UndoManager.m
//  UndoManager
//
//  Created by Alexander Rinass on 27/02/2017.
//  Copyright © 2017 fournova Software GmbH. All rights reserved.
//

#import "Model+UndoManager.h"

@implementation Model (UndoManager)

+ (NSUndoManager *)undoManager {
    static NSUndoManager *undoManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        undoManager = [[NSUndoManager alloc] init];
    });
    return undoManager;
}

@end

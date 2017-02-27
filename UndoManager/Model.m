//
//  Model.m
//  UndoManager
//
//  Created by Alexander Rinass on 25/02/2017.
//  Copyright © 2017 fournova Software GmbH. All rights reserved.
//

#import "Model.h"

@implementation Model

- (instancetype)init {
    self = [super init];

    if (self) {
        _counter = @(0);
    }

    return self;
}

@end

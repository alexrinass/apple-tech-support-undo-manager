//
//  WindowController.m
//  UndoManager
//
//  Created by Alexander Rinass on 25/02/2017.
//  Copyright © 2017 fournova Software GmbH. All rights reserved.
//

#import "WindowController.h"
#import "Model.h"

@interface WindowController ()
@property (nonatomic) NSUndoManager *windowUndoManager;
@end

@implementation WindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    self.windowUndoManager = [NSUndoManager new];
}

- (NSUndoManager *)windowWillReturnUndoManager:(NSWindow *)window {
    NSLog(@"First Responder: %@", window.firstResponder);
    return self.windowUndoManager;
//    return Model.undoManager;
}

@end

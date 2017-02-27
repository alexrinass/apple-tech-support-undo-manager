//
//  ViewController.m
//  UndoManager
//
//  Created by Alexander Rinass on 24/02/2017.
//  Copyright © 2017 fournova Software GmbH. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()
@property (nonatomic) Model *model;
@end

@implementation ViewController

- (BOOL)acceptsFirstResponder {
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [Model new];
}

- (void)viewDidAppear {
    [super viewDidAppear];
    [self.view.window makeFirstResponder:self];
}

- (void)viewWillDisappear {
    [super viewWillDisappear];
}

- (NSUndoManager *)undoManager {
    return Model.undoManager;
}

- (void)updateModel:(id)sender {
    NSDictionary *userInfo = @{@"counter": self.model.counter};
    [[self.undoManager prepareWithInvocationTarget:self] undoModelUpdateWithUserInfo:userInfo];
    [self.undoManager setActionName:@"Update Counter"];
    self.model.counter = @(self.model.counter.integerValue + 1);
}

- (void)undoModelUpdateWithUserInfo:(NSDictionary *)userInfo {
    [[self.undoManager prepareWithInvocationTarget:self] undoModelUpdateWithUserInfo:@{@"counter": self.model.counter}];
    self.model.counter = userInfo[@"counter"];
}

@end

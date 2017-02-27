//
//  Model+UndoManager.h
//  UndoManager
//
//  Created by Alexander Rinass on 27/02/2017.
//  Copyright © 2017 fournova Software GmbH. All rights reserved.
//

#import "Model.h"

@interface Model (UndoManager)
@property (nonatomic, class, readonly) NSUndoManager *undoManager;
@end

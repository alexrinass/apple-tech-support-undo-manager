//
//  Model.h
//  UndoManager
//
//  Created by Alexander Rinass on 25/02/2017.
//  Copyright © 2017 fournova Software GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property (nonatomic) NSNumber *counter;
@end

#import "Model+UndoManager.h"

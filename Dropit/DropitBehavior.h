//
//  DropitBehavior.h
//  Dropit
//
//  Created by Siming Yuan on 1/15/16.
//  Copyright © 2016 Siming Yuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior

- (void)addItem:(id <UIDynamicItem>)item;
- (void)removetem:(id <UIDynamicItem>)item;


@end

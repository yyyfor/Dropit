//
//  DropitBehavior.m
//  Dropit
//
//  Created by Siming Yuan on 1/15/16.
//  Copyright © 2016 Siming Yuan. All rights reserved.
//

#import "DropitBehavior.h"

@interface DropitBehavior ()
@property (strong,nonatomic) UIGravityBehavior *gravity;
@property (strong,nonatomic) UICollisionBehavior *collider;

@end
@implementation DropitBehavior


- (UIGravityBehavior *)gravity
{
    if (!_gravity) {
        _gravity = [[UIGravityBehavior alloc]init];
        _gravity.magnitude = 0.9;
    }
    return _gravity;
}

- (UICollisionBehavior *)collider
{
    if (!_collider) {
        _collider = [[UICollisionBehavior alloc]init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}

- (void)addItem:(id <UIDynamicItem>)item
{
    [self.gravity addItem:item];
    [self.collider addItem:item];
}

- (void)removetem:(id <UIDynamicItem>)item
{
    [self.gravity removeItem:item];
    [self.collider removeItem:item];
}


-(instancetype)init
{
    self = [super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collider];
    return self;
}

@end

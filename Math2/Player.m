//
//  Player.m
//  Math2
//
//  Created by Luiz on 5/6/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _alive = YES;
        _score = 0;
        _lives = 3;
    }
    return self;
}

-(void) loseLife
{
    _lives--;
}
-(void) hitAnAnswer
{
    _score++;
}

@end

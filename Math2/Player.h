//
//  Player.h
//  Math2
//
//  Created by Luiz on 5/6/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject
@property (nonatomic) int score;
@property (nonatomic) int lives;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, getter=isAlive) BOOL alive;

//Methods
-(void) loseLife;
-(void) hitAnAnswer;

@end

NS_ASSUME_NONNULL_END

//
//  SubstractionQuestion.m
//  Maths
//
//  Created by Luiz on 5/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "SubstractionQuestion.h"

@implementation SubstractionQuestion
- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}


- (void)generateQuestion {
    // set super.answer here
    super.answer = super.leftSide - super.rightSide;
    // set super.question here
    super.question = [[NSString alloc] initWithFormat: @"%lu - %lu = ?", super.leftSide, super.rightSide];
}

@end

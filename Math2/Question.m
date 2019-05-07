//
//  AdditionQuestion.m
//  Maths
//
//  Created by Luiz on 4/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftSide = 1 + arc4random_uniform((uint32_t)(20));
        _rightSide = 1 + arc4random_uniform((uint32_t)(20));
        _answer = _leftSide + _rightSide;
        _question =  [[NSString alloc] initWithFormat: @"%lu + %lu = ?", _leftSide, _rightSide];
        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) timeDiference{

    return [_endTime timeIntervalSinceDate:_startTime];
}

-(void) generateQuestion{
    
}
@end

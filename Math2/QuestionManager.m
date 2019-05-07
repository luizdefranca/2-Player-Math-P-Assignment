//
//  QuestionManager.m
//  Maths
//
//  Created by Luiz on 5/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

-(NSString *) timeOutput{
    NSInteger totalTime = 0;
    NSInteger averageTime = 0;
    for (Question *question in _questions) {
       totalTime += [question timeDiference];
    }
    
    averageTime = totalTime / _questions.count;
    NSString *returnString = [[NSString alloc]initWithFormat: @"total time: %lus, average time: %lus", totalTime, averageTime];

    return returnString;
}
@end

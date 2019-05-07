//
//  AdditionQuestion.h
//  Maths
//
//  Created by Luiz on 4/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

-(instancetype) init;
@property (readonly, nonatomic)NSInteger leftSide;
@property (readonly, nonatomic) NSInteger rightSide;
@property  (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSString * question;
@property (nonatomic, strong) NSDate * startTime;
@property (nonatomic, strong)NSDate * endTime;


- (NSTimeInterval) timeDiference;
-(void) generateQuestion;
@end

NS_ASSUME_NONNULL_END

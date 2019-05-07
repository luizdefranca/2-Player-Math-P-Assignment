//
//  QuestionFactory.h
//  Maths
//
//  Created by Luiz on 5/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

-(Question *) generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END

//
//  GameModel.h
//  Math2
//
//  Created by Luiz on 5/6/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Question.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameModel : NSObject
@property (nonatomic, strong) Player* player1;
@property (nonatomic, strong) Player* player2;
@property (nonatomic, strong) Player* currentPlayer;


@property (nonatomic, strong) NSString * question;
@property (nonatomic) NSInteger  answer;

@property (nonatomic, getter=isGameOn) BOOL gameOn;

-(BOOL) checkAnswer: (NSInteger) answer;
-(void) generateQuestion;
-(void) changeCurrentPlayer;

@end

NS_ASSUME_NONNULL_END

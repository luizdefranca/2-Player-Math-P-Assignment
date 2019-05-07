//
//  GameModel.m
//  Math2
//
//  Created by Luiz on 5/6/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "GameModel.h"

@interface GameModel()
@property  (nonatomic, strong) QuestionManager * questionManager;
@property (nonatomic, strong) QuestionFactory * factory;

@end

@implementation GameModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionManager = [[QuestionManager alloc] init];
        _factory = [[QuestionFactory alloc] init];
        _player1 = [Player new];
        _player1.name = @"Player1";
        _player2 = [Player new];
        _player2.name = @"Player2";
        _currentPlayer = _player1;
    }
    return self;
}

-(void) generateQuestion{
    Question *question = [_factory generateRandomQuestion];
     _answer= question.answer;
    _question = question.question;
    
}



-(BOOL) checkAnswer: (NSInteger) answer{
    BOOL isCorrect = YES;
    if(_answer == answer){
        [self hitAnAnswer];
        
    } else {
        [self loseLife];
        isCorrect = NO;
    }
    
    
    return isCorrect;
}
-(void) changeCurrentPlayer{
  
    if([_currentPlayer isEqual: _player1]){
        _currentPlayer = _player2;
    } else {
        _currentPlayer = _player1;
    }
   
}

-(void) loseLife{
    [_currentPlayer hitAnAnswer];
    if(_currentPlayer.lives <= 0){
        _gameOn = NO;
    }
}
-(void) hitAnAnswer{
     [_currentPlayer loseLife];
}



@end

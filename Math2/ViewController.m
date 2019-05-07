//
//  ViewController.m
//  Math2
//
//  Created by Luiz on 5/6/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

//IBOutlet
@property (weak, nonatomic) IBOutlet UILabel *resultScreenLabel;
@property (weak, nonatomic) IBOutlet UILabel *player1ScreenLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScreenLabel;
@property (weak, nonatomic) IBOutlet UIButton *enterButton;
@property (nonatomic, strong) NSMutableString * answer;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

//Properties
@property (nonatomic, strong) GameModel * gameModel;
@property (nonatomic, strong) Player * currentPlayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if(!_gameModel){
        _gameModel = [GameModel new];
    }
  
    _answer = [NSMutableString new];
    _player1ScreenLabel.text = @"Prayer1 - Score: 0 Live: 3";
    _player2ScreenLabel.text = @"Prayer2 - Score: 0 Live: 3";
    [_enterButton setEnabled:  NO];
    [_gameModel generateQuestion];
    [_answerLabel setHidden:YES];
    
    NSString * player = _gameModel.currentPlayer.name;
    _resultScreenLabel.text = [NSMutableString stringWithFormat: @"%@ : %@", player, _gameModel.question ];
    
}

- (IBAction)typeNumber:(UIButton *)sender {
    NSString * number = [sender currentTitle];
    [_answer appendString: number];
    [_enterButton setEnabled:YES];
}

- (IBAction)enter:(UIButton *)sender {
    
    //TODO: implement the game over
    
    _currentPlayer = [_gameModel currentPlayer];
    
    //check the answer
    if ([_gameModel checkAnswer:  _answer.integerValue]){
        
        [UIView animateWithDuration:1
                         animations:^{
                             [self.answerLabel setHidden: NO];
                             self.answerLabel.textColor = [UIColor greenColor];
                             self.answerLabel.text = @"Correct";
                             
                         } completion:^(BOOL finished) {
                             [self.answerLabel setHidden: YES];
                         }];
        
//        [UIView animateWithDuration: 2 animations:^{
//           self.answerLabel.text = @"Correct";
//            [self.answerLabel setHidden: YES];
//
//        }];
//         [self.answerLabel setHidden: NO];
        
      //  [_answerLabel setHidden: YES];
        
    NSString * screenPlayer = [NSString stringWithFormat: @"%@ : Score: %d Lifes: %d",
                                   _currentPlayer.name, _currentPlayer.score, _currentPlayer.lives];
        
        if([_currentPlayer.name isEqualToString: @"Player1"]){
            _player1ScreenLabel.text = screenPlayer;
        } else {
            _player2ScreenLabel.text = screenPlayer;
        }
    } else {
        
        
        [UIView animateWithDuration:1
                         animations:^{
                             [self.answerLabel setHidden: NO];
                             self.answerLabel.textColor = [UIColor redColor];
                             self.answerLabel.text = @"Incorrect";
                             
                         } completion:^(BOOL finished) {
                             [self.answerLabel setHidden: YES];
                         }];
        
        [_answerLabel setHidden: YES];
        NSString * screenPlayer = [NSString stringWithFormat: @"%@ - Score: %d Lifes: %d",
                                   _currentPlayer.name, _currentPlayer.score, _currentPlayer.lives];
        if([_currentPlayer.name isEqualToString: @"Player1"]){
            _player1ScreenLabel.text = screenPlayer;
        } else {
            _player2ScreenLabel.text = screenPlayer;
        }
    }
    [_gameModel changeCurrentPlayer];
    [_enterButton setEnabled: NO];
    [_gameModel generateQuestion];
    
    NSString * player = _gameModel.currentPlayer.name;
    _resultScreenLabel.text = [NSMutableString stringWithFormat: @"%@ : %@", player, _gameModel.question ];
  //  _resultScreenLabel.text = _gameModel.question;
    _answer = [NSMutableString new];
    
}

@end

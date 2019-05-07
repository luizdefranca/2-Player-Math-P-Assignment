//
//  InputHandler.m
//  Maths
//
//  Created by Luiz on 4/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
-(NSString*) stringFromInput{
    char inputChar[255];
    
    fgets(inputChar, 255, stdin);
    NSString *response = [[NSString stringWithCString:inputChar
                                                encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet: NSCharacterSet.whitespaceAndNewlineCharacterSet];
    return response;
};

+(NSString*) stringFromInput{
    char inputChar[255];
    
    fgets(inputChar, 255, stdin);
    NSString *response = [[NSString stringWithCString:inputChar
                                             encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet: NSCharacterSet.whitespaceAndNewlineCharacterSet];
    return response;
};
@end

//
//  Room.h
//  AwesomeAdventureGame
//
//  Created by Vineet Tiwari on 2015-05-10.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Room : NSObject

@property (nonatomic, strong) NSNumber* roomNumber;
@property (nonatomic, assign) BOOL containsPrize;
@property (nonatomic, assign) BOOL containsEnemy;

@end

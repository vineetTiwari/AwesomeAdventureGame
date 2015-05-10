//
//  Player.h
//  AwesomeAdventureGame
//
//  Created by Vineet Tiwari on 2015-05-10.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic ) int location;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) int health;

-(instancetype) initWithName:(NSString*)name lives:(int)lives location:(int) cell;

-(void) playerMove:(NSString*)direction;

@end


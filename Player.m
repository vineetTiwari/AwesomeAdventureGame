//
//  Player.m
//  AwesomeAdventureGame
//
//  Created by Vineet Tiwari on 2015-05-10.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import "Player.h"

@implementation Player


-(instancetype) initWithName:(NSString*)name lives:(int)lives location:(int)cell{
  self = [super init];
  if (self) {
    _name = name;
    _health = lives;
    _location = cell;
  }
  return self;
}

-(void) playerMove:(NSString*)direction{

  //If the player is already at the left of the grid they shouldnt be able to move left
  if ([direction isEqualToString:@"l\n"]){
    if(_location%4==1){

      NSLog(@"already at the left side of the grid");
    } else{

      _location=_location-1;
    }
  }

  //If the player is already at the right of the grid they shouldnt be able to move right
  if ([direction isEqualToString:@"r\n"]){

    if(_location%4==0){

      NSLog(@"already at the right side of the grid");
    } else{
      _location=_location+1;
    }
  }

  //If the player is already at the top of the grid they shouldnt be able to move up
  if ([direction isEqualToString:@"u\n"]){

    if (_location<4) {

      NSLog(@"already at the top of the grid");
    } else {
      _location=_location-4;
    }
  }
  //If the player is already at the bottom of the grid they shouldnt be able to move down

  if ([direction isEqualToString:@"d\n"]){
    if (_location>12){

      NSLog(@"already at the bottom of the grid");
    } else {
      _location=_location+4;
    }
  }

};


@end

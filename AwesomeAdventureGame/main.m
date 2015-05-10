//
//  main.m
//  AdventureGame2
// This is a fun, single player text adventure game loosely based on Dungens & Dragons.
// I hope you enjoy it :)
//  Created by Vineet Tiwari on 2015-05-08.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Room.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    char name[100];
    NSLog(@"Player Name:");

    //User input for the name
    fgets(name, 100, stdin);

    NSString* nameString = [NSString stringWithUTF8String:name];

    Player* player1 = [[Player alloc]initWithName:nameString lives:3 location:1];

    NSLog(@"Where would you like to move? (l = left, r = right, u = up, d = down");

    while (player1.health > 0) {
      
      char move[100];
      fgets(move, 100, stdin);
      NSString* moveString = [NSString stringWithUTF8String:move];

      [player1 playerMove:moveString];

      NSLog(@"%d",player1.location);

    }

  }
  return 0;
}
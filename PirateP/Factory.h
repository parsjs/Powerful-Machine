//
//  Factory.h
//  PirateP
//
//  Created by Alireza on 7/1/14.
//  Copyright (c) 2014 OSX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Boss.h"

@interface Factory : NSObject

-(NSArray *)tiles;
-(Character *)character;
-(Boss *)boss;

@end

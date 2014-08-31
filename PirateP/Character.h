//
//  Character.h
//  PirateP
//
//  Created by Alireza on 7/7/14.
//  Copyright (c) 2014 OSX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"

@interface Character : NSObject

@property (nonatomic, strong) Armor *armor;
@property (nonatomic, strong) Weapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end

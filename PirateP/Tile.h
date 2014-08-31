//
//  Tile.h
//  PirateP
//
//  Created by Alireza on 7/1/14.
//  Copyright (c) 2014 OSX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Weapon.h"
#import "Armor.h"

@interface Tile : NSObject

@property (nonatomic, strong) NSString *story;
@property (nonatomic, strong) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;
@property (nonatomic) int healthEffect;
@property (nonatomic, strong) NSString *northButtonName;

@end

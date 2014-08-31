//
//  Factory.m
//  PirateP
//
//  Created by Alireza on 7/1/14.
//  Copyright (c) 2014 OSX. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"

@implementation Factory

-(NSArray *)tiles
{
    Tile *tile1 = [[Tile alloc]init];
    tile1.story = @"First story of this app";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    Weapon *weapon = [[Weapon alloc]init];
    weapon.name = @"Sexy";
    weapon.damage = 10;
    tile1.weapon = weapon;
    tile1.actionButtonName = @"Take the Sword";

    Tile *tile2 = [[Tile alloc]init];
    tile2.story = @"Two is actually is meant that it is second story of this app";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    Armor *armor = [[Armor alloc]init];
    armor.name = @"Steel Armor";
    armor.health = 8;
    tile2.armor = armor;
    tile2.actionButtonName = @"Magic";
    
    Tile *tile3 = [[Tile alloc]init];
    tile3.story = @"Three means third app of this iPhone";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile3.healthEffect = -12;
    tile3.actionButtonName = @"Stop";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc]initWithObjects:tile1, tile2, tile3, nil];
    
    Tile *tile4 = [[Tile alloc]init];
    tile4.story = @"Four + 'th' means fourth story in app";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    Armor *armorFour = [[Armor alloc]init];
    armorFour.health = 12;
    armorFour.name = @"S=))";
    tile4.actionButtonName = @"Ye baby";
    
    Tile *tile5 = [[Tile alloc]init];
    tile5.story = @"Five +++";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    Weapon *fifthWeapon = [[Weapon alloc]init];
    fifthWeapon.name = @"Fifth thing";
    fifthWeapon.damage = 21;
    tile5.actionButtonName = @"Show me";
    
    Tile *tile6 = [[Tile alloc]init];
    tile6.story = @"Six++++";
    tile6.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Go!";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc]initWithObjects:tile4, tile5, tile6, nil];
    
    Tile *tile7 = [[Tile alloc]init];
    tile7.story = @"Seven ++++";
    tile7.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Funny";
    
    Tile *tile8 = [[Tile alloc]init];
    tile8.story = @"Eight +++++++";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Help";
    
    Tile *tile9 = [[Tile alloc]init];
    tile9.story = @"Nine HEYHOOO";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Tirs";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]initWithObjects:tile7, tile8, tile9, nil];

    
    Tile *tile10 = [[Tile alloc]init];
    tile10.story = @"Ten is GOOD";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Help";

    Tile *tile11 = [[Tile alloc]init];
    tile11.story = @"Eleven I like IT! = )";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Fisk";

    Tile *tile12 = [[Tile alloc]init];
    tile12.story = @"Twelve is FUCK YOU";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Duck";
    
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc]initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *tiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;

}
-(Character *)character
{
    Character *character = [[Character alloc]init];
    character.health = 100;
    Armor *armor = [[Armor alloc]init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    
    Weapon *weapon = [[Weapon alloc]init];
    weapon.name = @"Teen";
    weapon.damage = 19;
    character.weapon = weapon;
    
    return character;
}
-(Boss *)boss
{
    Boss *boss = [[Boss alloc]init];
    boss.health = 65;
    
    return boss;
}

@end

//
//  ViewController.m
//  PirateP
//
//  Created by Alireza on 6/30/14.
//  Copyright (c) 2014 OSX. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "Tile.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Factory *factory = [[Factory alloc]init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.boss = [factory boss];
    
    self.currentPoint = CGPointMake(0, 0);
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
    [self updateTile];
    [self updateButtons];
        
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

- (IBAction)actionButtonPressed:(UIButton *)sender {
    Tile *tile = [[self.tiles objectAtIndex:self.currentPoint.x]objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect == 15) {
        self.boss.health = self.boss.health - self.character.damage;
    }
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    
    if(self.character.health <= 0 ){
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Cock" message:@"You DIED!" delegate:nil cancelButtonTitle:@"Fuck up!" otherButtonTitles:nil, nil];
        [alertView show];
    }
    else if (self.boss.health <= 0){
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Victory!" message:@"You won!" delegate:nil cancelButtonTitle:@"YEEE" otherButtonTitles:nil, nil];
        [alertView show];
    }
    [self updateTile];
}

- (IBAction)northButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateTile];
    [self updateButtons];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateTile];
    [self updateButtons];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateTile];
    [self updateButtons];
}

#pragma mark - Method Helpers

-(void)updateButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}
-(BOOL)tileExistsAtPoint:(CGPoint)point
{
    if(point.x >= 0 && point.y >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x]count]){
        return NO;
    }
       else{
           return YES;
       }
}
-(void)updateTile
{
    Tile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x]objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundImage.image = tileModel.backgroundImage;
    self.healthNumber.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.damageNumber.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.armorName.text = self.character.armor.name;
    self.weaponName.text = self.character.weapon.name;
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
}
-(void)updateCharacterStatsForArmor: (Armor *)armor withWeapons:(Weapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil){
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil){
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0){
        self.character.health = self.character.health + healthEffect;
    }
    else{
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}

@end

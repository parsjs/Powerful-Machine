//
//  ViewController.h
//  PirateP
//
//  Created by Alireza on 6/30/14.
//  Copyright (c) 2014 OSX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"
#import "Boss.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;

//iVars

@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) Character *character;
@property (strong, nonatomic) Boss *boss;


@property (strong, nonatomic) IBOutlet UILabel *healthNumber;
@property (strong, nonatomic) IBOutlet UILabel *weaponName;
@property (strong, nonatomic) IBOutlet UILabel *armorName;
@property (strong, nonatomic) IBOutlet UILabel *damageNumber;

@property (strong, nonatomic) IBOutlet UILabel *storyLabel;

//IBOutlets
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;

//IBActions

- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;


@end


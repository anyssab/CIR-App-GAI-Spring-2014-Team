//
//  ScrollViewController.h
//  PageViewDemo
//
//  Created by Sophie Lehar on 3/28/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *diningTextField;
@property (weak, nonatomic) IBOutlet UITextField *basementTextField;
@property (weak, nonatomic) IBOutlet UITextField *atticTextField;
@property (weak, nonatomic) IBOutlet UITextField *carTextField;
@property (weak, nonatomic) IBOutlet UITextField *hallwayTextField;
@property (weak, nonatomic) IBOutlet UITextField *garageTextField;

@property (weak, nonatomic) IBOutlet UISlider *diningSlider;
@property (weak, nonatomic) IBOutlet UISlider *basementSlider;
@property (weak, nonatomic) IBOutlet UISlider *atticSlider;
@property (weak, nonatomic) IBOutlet UISlider *carSlider;
@property (weak, nonatomic) IBOutlet UISlider *hallwaySlider;
@property (weak, nonatomic) IBOutlet UISlider *garageSlider;

- (IBAction)finishPressed:(id)sender;

- (IBAction)diningValueChanged:(UISlider *)sender;
- (IBAction)basementValueChanged:(UISlider *)sender;
- (IBAction)atticValueChanged:(UISlider *)sender;
- (IBAction)carValueChanged:(UISlider *)sender;
- (IBAction)hallwayValueChanged:(UISlider *)sender;
- (IBAction)garageValueChanged:(UISlider *)sender;

@end

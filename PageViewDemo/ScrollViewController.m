//
//  ScrollViewController.m
//  PageViewDemo
//
//  Created by Sophie Lehar on 3/28/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "ScrollViewController.h"
#import "AppDelegate.h"

@interface ScrollViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

@end

@implementation ScrollViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//DINING SLIDER CODE

@synthesize diningSlider, diningTextField;

//WHEN FINISH BUTTON IS PRESSED VALUES ARE STORED

- (IBAction)finishPressed:(id)sender {
    
    AppDelegate* appDelegate = [[UIApplication sharedApplication]delegate];
    
    NSMutableDictionary* dictionary = appDelegate.results;
    dictionary[@"dining"] = self.diningTextField.text;
    dictionary[@"basement"] = self.basementTextField.text;
    dictionary[@"attic"] = self.atticTextField.text;
    dictionary[@"car"] = self.carTextField.text;
    dictionary[@"hallway"] = self.hallwayTextField.text;
    dictionary[@"garage"] = self.garageTextField.text;
    
    
}

-(IBAction)diningValueChanged:(UISlider*)sender {
    int discreteValue = roundl([sender value]); // Rounds float to an integer
    [sender setValue:(float)discreteValue]; // Sets your slider to this value
    diningTextField.text = [NSString stringWithFormat:@" %.0f", [sender value]];
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (diningTextField) {
        if ([diningTextField canResignFirstResponder]) [diningTextField resignFirstResponder];
    }
    [super touchesBegan: touches withEvent: event];
}

//BASEMENT SLIDER CODE

@synthesize basementSlider, basementTextField;

-(IBAction)basementValueChanged:(UISlider*)sender {
    int discreteValue = roundl([sender value]); // Rounds float to an integer
    [sender setValue:(float)discreteValue]; // Sets your slider to this value
    basementTextField.text = [NSString stringWithFormat:@" %.0f", [sender value]];
}

- (void) basementTouchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (basementTextField) {
        if ([basementTextField canResignFirstResponder]) [basementTextField resignFirstResponder];
    }
    [super touchesBegan: touches withEvent: event];
}

//ATTIC SLIDER CODE

@synthesize atticSlider, atticTextField;

-(IBAction)atticValueChanged:(UISlider*)sender {
    int discreteValue = roundl([sender value]); // Rounds float to an integer
    [sender setValue:(float)discreteValue]; // Sets your slider to this value
    atticTextField.text = [NSString stringWithFormat:@" %.0f", [sender value]];
}

- (void) atticTouchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (atticTextField) {
        if ([atticTextField canResignFirstResponder]) [atticTextField resignFirstResponder];
    }
    [super touchesBegan: touches withEvent: event];
}

//CAR SLIDER CODE

@synthesize carSlider, carTextField;

-(IBAction)carValueChanged:(UISlider*)sender {
    int discreteValue = roundl([sender value]); // Rounds float to an integer
    [sender setValue:(float)discreteValue]; // Sets your slider to this value
    carTextField.text = [NSString stringWithFormat:@" %.0f", [sender value]];
}

- (void) carTouchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (carTextField) {
        if ([basementTextField canResignFirstResponder]) [carTextField resignFirstResponder];
    }
    [super touchesBegan: touches withEvent: event];
}

//HALLWAY SLIDER CODE

@synthesize hallwaySlider, hallwayTextField;

-(IBAction)hallwayValueChanged:(UISlider*)sender {
    int discreteValue = roundl([sender value]); // Rounds float to an integer
    [sender setValue:(float)discreteValue]; // Sets your slider to this value
    hallwayTextField.text = [NSString stringWithFormat:@" %.0f", [sender value]];
}

- (void) hallwayTouchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (hallwayTextField) {
        if ([hallwayTextField canResignFirstResponder]) [hallwayTextField resignFirstResponder];
    }
    [super touchesBegan: touches withEvent: event];
}

//GARAGE SLIDER CODE

@synthesize garageSlider, garageTextField;

-(IBAction)garageValueChanged:(UISlider*)sender {
    int discreteValue = roundl([sender value]); // Rounds float to an integer
    [sender setValue:(float)discreteValue]; // Sets your slider to this value
    garageTextField.text = [NSString stringWithFormat:@" %.0f", [sender value]];
}

- (void) garageTouchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (garageTextField) {
        if ([garageTextField canResignFirstResponder]) [garageTextField resignFirstResponder];
    }
    [super touchesBegan: touches withEvent: event];
}

//END OF SLIDER CODE

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self.myScrollView setScrollEnabled:YES];
    [self.myScrollView setContentSize:(CGSizeMake(320,500))];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

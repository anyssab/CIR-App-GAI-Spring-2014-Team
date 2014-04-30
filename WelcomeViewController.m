//
//  WelcomeViewController.m
//  PageViewDemo
//
//  Created by Sophie Lehar on 4/15/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//


#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)message:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Instructions" message:@"Swipe through the following photos and select the photo that most accuratley reflects the amount of clutter in your room." delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
	[alertView show];
}

@end


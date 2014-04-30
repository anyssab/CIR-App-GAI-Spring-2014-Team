//
//  ResultsViewController.h
//  PageViewDemo
//
//  Created by Sophie Lehar on 3/28/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <MessageUI/MessageUI.h>

@interface ResultsViewController : UIViewController <MFMailComposeViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *Result1;
@property (weak, nonatomic) IBOutlet UITextField *Result2;
@property (weak, nonatomic) IBOutlet UITextField *Result3;
- (IBAction)showEmail:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *diningResult;
@property (weak, nonatomic) IBOutlet UITextField *basementResult;
@property (weak, nonatomic) IBOutlet UITextField *atticResult;
@property (weak, nonatomic) IBOutlet UITextField *carResult;
@property (weak, nonatomic) IBOutlet UITextField *hallwayResult;
@property (weak, nonatomic) IBOutlet UITextField *garageResult;

@end

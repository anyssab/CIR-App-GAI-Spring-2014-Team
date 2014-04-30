//
//  ResultsViewController.m
//  PageViewDemo
//
//  Created by Sophie Lehar on 3/28/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (nonatomic) NSString * emailString;
@end

@implementation ResultsViewController

-(void)viewDidAppear:(BOOL)animated
{
    
    AppDelegate *app = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    NSMutableDictionary *results = [app results];
    
    NSNumber *firstResult = [results valueForKey:@"first"];
    NSNumber *secondResult = [results valueForKey: @"second"];
    NSNumber *thirdResult = [results valueForKey:@"third"];
    
    int firstResultInt = [firstResult intValue]; firstResultInt++;
    int secondResultInt = [secondResult intValue]; secondResultInt++;
    int thirdResultInt = [thirdResult intValue]; thirdResultInt++;
    
    [_Result1 setText:[NSString stringWithFormat:@"%i", firstResultInt]];
    [_Result2 setText:[NSString stringWithFormat:@"%i", secondResultInt]];
    [_Result3 setText:[NSString stringWithFormat:@"%i", thirdResultInt]];
    self.diningResult.text = results[@"dining"];
    self.basementResult.text = results[@"basement"];
    self.atticResult.text = results[@"attic"];
    self.carResult.text = results[@"car"];
    self.hallwayResult.text = results[@"hallway"];
    self.garageResult.text = results[@"garage"];

    NSMutableString * str = [NSMutableString new];
    
    NSString *firstResultString = [NSString stringWithFormat:@"%d",firstResultInt];
    [str appendString:@"Bedroom: "];
    [str appendString: firstResultString];
    [str appendString:@"\n"];
    
    NSString *secondResultString = [NSString stringWithFormat:@"%d",secondResultInt];
    [str appendString:@"Living Room: "];
    [str appendString: secondResultString];
    [str appendString:@"\n"];
    
    NSString *thirdResultString = [NSString stringWithFormat:@"%d",thirdResultInt];
    [str appendString:@"Kitchen: "];
    [str appendString: thirdResultString];
    [str appendString:@"\n"];
    
    [str appendString:@"Dining: "];
    [str appendString:self.diningResult.text];
    [str appendString:@"\n"];
    [str appendString:@"Basement: "];
    [str appendString:self.basementResult.text];
    [str appendString:@"\n"];
    [str appendString:@"Attic: "];
    [str appendString:self.atticResult.text];
    [str appendString:@"\n"];
    [str appendString:@"Car: "];
    [str appendString:self.carResult.text];
    [str appendString:@"\n"];
    [str appendString:@"Hallway: "];
    [str appendString:self.hallwayResult.text];
    [str appendString:@"\n"];
    [str appendString:@"Garage: "];
    [str appendString:self.garageResult.text];
    [str appendString:@"\n"];

    
    self.emailString = [NSString stringWithString:str];
}

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

- (IBAction)showEmail:(id)sender {
    // Email Subject
    NSString *emailTitle = @"Clutter Image Rating Application";
    // Email Content
    NSString *messageBody = self.emailString; // Change the message body to HTML
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@""];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
            
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end

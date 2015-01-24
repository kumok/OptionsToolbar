//
//  OTViewController.m
//  OptionsToolbar
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "OTViewController.h"
#import <MessageUI/MessageUI.h>
#import "OTNewFancyViewController.h"

@interface OTViewController () <MFMailComposeViewControllerDelegate>

@end

@implementation OTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)mailButtonTapped:(id)sender {
    
    if ([MFMailComposeViewController canSendMail]) {
        
        MFMailComposeViewController *mc = [MFMailComposeViewController new];
        
        mc.mailComposeDelegate = self;
        
        [self presentViewController:mc animated:YES completion:nil];
    }
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)redButtonTapped:(id)sender {
    
    self.view.backgroundColor = [UIColor redColor];
}

- (IBAction)blueButtonTapped:(id)sender {
    
    self.view.backgroundColor = [UIColor blueColor];
}

- (IBAction)newButtonTapped:(id)sender {
    
    OTNewFancyViewController *newViewController = [OTNewFancyViewController new];
    
    [self presentViewController:newViewController animated:YES completion:nil];
    
}

@end

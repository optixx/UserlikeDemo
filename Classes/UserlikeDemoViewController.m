//
//  UserlikeDemoViewController.m
//  UserlikeDemo
//
//  Created by David on 10/5/11.
//  Copyright 2011 Devcores. All rights reserved.
//

#import "UserlikeDemoViewController.h"
#import "UserlikeDemoAppDelegate.h"

@implementation UserlikeDemoViewController

@synthesize userlikeChatController;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
}

- (IBAction)startChat:(id)sender {
    if (userlikeChatController!=nil){
        [userlikeChatController release];
    }
    userlikeChatController = [[UserlikeChatController alloc] init]; 
    userlikeChatController.delegate = self;    
    [self presentModalViewController:userlikeChatController animated:YES];
}

- (IBAction)openWebsite:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.userlike.com"]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
#pragma mark UserlikeChat delegate methods

- (void)chatDidFinish
{
    NSLog(@"conversationDidFinish");
}

- (void)dealloc {
    [userlikeChatController release];
    [super dealloc];
}

@end


//
//  UserlikeDemoAppDelegate.m
//  UserlikeDemo
//
//  Created by David on 10/5/11.
//  Copyright 2011 Devcores. All rights reserved.
//


#import "UserlikeDemoAppDelegate.h"
#import "UserlikeDemoViewController.h"


@implementation UserlikeDemoAppDelegate

@synthesize window;
@synthesize rootViewController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
   
	[window addSubview: rootViewController.view];
    [window makeKeyAndVisible];
	return YES;
}


- (void)applicationWillTerminate:(UIApplication *)application {
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[window release];
	[super dealloc];
}

@end


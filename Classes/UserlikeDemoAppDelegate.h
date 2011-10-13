//
//  UserlikeDemoAppDelegate.h
//  UserlikeDemo
//
//  Created by David on 10/5/11.
//  Copyright 2011 Devcores. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "UserlikeDemoViewController.h"

@interface UserlikeDemoAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UserlikeDemoViewController *rootViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UserlikeDemoViewController *rootViewController;
@end


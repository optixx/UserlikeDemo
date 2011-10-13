//
//  UserlikeDemoViewController.h
//  UserlikeDemo
//
//  Created by David on 10/5/11.
//  Copyright 2011 Devcores. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserlikeClient/UserlikeChatController.h"

@interface UserlikeDemoViewController : UIViewController <UserlikeChatDelegate> {
	
    UserlikeChatController *userlikeChatController;
}
- (IBAction)startChat:(id)sender;
- (IBAction)openWebsite:(id)sender;

@property (nonatomic, retain) UserlikeChatController *userlikeChatController;

@end


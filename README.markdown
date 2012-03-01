

  
                           .__  .__ __           
  __ __  ______ ___________|  | |__|  | __ ____  
 |  |  \/  ___// __ \_  __ \  | |  |  |/ // __ \ 
 |  |  /\___ \\  ___/|  | \/  |_|  |    <\  ___/ 
 |____//____  >\___  >__|  |____/__|__|_ \\___  >
            \/     \/                   \/    \/ 
 


 (c) 2011, Userlike - david@userlike.com - http://userlike.com


#Tutorial

This tutorial shows you in detail how to create sample application with the Userlike chat integrated.

1. Start a new project in ‘Xcode’ and create a ‘Simple view application’.

2. Create a sample project and Use Storyboard. 

3. Now go to the Userlike Github project and download the [UserlikeClient.framework](https://github.com/userlike/Userlike-iOS-Demo/downloads) 

4. Untar the framework.tar.gz 

5. Go into Xcode and add the following frameworks to the built target.

* UserlikeClient.framework
* libz.dylib
* libicucore.dylib
* libxml2.dylib
* MobileCoreServices.framework
* CFNetwork.framework
* SystemConfiguration.framework
* CoreLocation.framework.

6. Now go to the MainStoryboard.storyboard and add a button to the view.

7. Go into the ViewControler header file and add UserlikeChatControler include, implement UserlikeChatDelegate control, and add UserlikeChatController property.

```objective-c
@interface ViewController : UIViewController <UserlikeChatDelegate> {
	
    UserlikeChatController *userlikeChatController;
}
```

@property (nonatomic, retain) UserlikeChatController *userlikeChatController;

8. Now add an IBaction with the name ‘startChat’, and connect it to the button.

```objective-c
- (IBAction)startChat:(id)sender;
```

9. Go to the ViewControler implementation file and implement the IBaction ‘startChat’

```objective-c
- (IBAction)startChat:(id)sender {
    if (userlikeChatController!=nil){
        [userlikeChatController release];
    }
    userlikeChatController = [[UserlikeChatController alloc] init]; 
    userlikeChatController.delegate = self;    
    [self presentModalViewController:userlikeChatController animated:YES];
}
```

10. You can optionally implement the UserlikeChat delegate method: chatDidFinish, to receive a callback when the chat ends.

11. Now go to userlike.com and log into your dashboard.

12. Go to the ‘widgets’ section > ‘iOS integration’ and download your unique Plist.

13. Drag and drop the Plist into the Xcode project.

14. Also drag and drop the UserlikeClient.bundle, which was included in the framework download, into the Xcode project.

15. Check in the ‘Build phases’ whether the UserlikeClient.bundle is present in the Copy Bundle Resources.(if not, add it)

16. Now you can compile and run the app.

17. When clicking on the chat button inside your app, the Userlike chat  starts.



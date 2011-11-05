/*
 *  
 *                           .__  .__ __           
 *  __ __  ______ ___________|  | |__|  | __ ____  
 * |  |  \/  ___// __ \_  __ \  | |  |  |/ // __ \ 
 * |  |  /\___ \\  ___/|  | \/  |_|  |    <\  ___/ 
 * |____//____  >\___  >__|  |____/__|__|_ \\___  >
 *            \/     \/                   \/    \/ 
 * 
 *
 * (c) 2011, Userlike - david@userlike.com - http://userlike.com
 * 
 *
 * Userlike Chat Client Demo
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 *
 */

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


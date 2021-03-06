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

#import <UIKit/UIKit.h>
#import "UserlikeDemoViewController.h"

@interface UserlikeDemoAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UserlikeDemoViewController *rootViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UserlikeDemoViewController *rootViewController;
@end


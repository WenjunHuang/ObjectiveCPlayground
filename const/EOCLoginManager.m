#import "EOCLoginManager.h"

NSString *const EOCLoginManagerDidLoginNotification = @"EOCLoginManagerDidLoginNotification";

@implementation EOCLoginManager

- (void)login {
  [[NSNotificationCenter defaultCenter] postNotificationName:EOCLoginManagerDidLoginNotification object:nil];

}
@end
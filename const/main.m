#import <Foundation/Foundation.h>
#import "EOCLoginManager.h"
static const NSTimeInterval kAnimationDuration = 0.3;

int main() {
  @autoreleasepool {
    id login = [[EOCLoginManager alloc] init];
    [login login];
  }

}
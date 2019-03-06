#import "Foundation/Foundation.h"

@protocol Drawing
- (void) paint;
- (void) erase;
@optional
- (void) outline;
@end
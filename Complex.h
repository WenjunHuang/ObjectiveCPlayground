#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property double imaginary, real;
- (void)print;
- (void)setReal:(double)a andImaginary:(double)b;
- (Complex *)add:(Complex *)f;

@end
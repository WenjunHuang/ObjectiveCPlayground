#import "Fraction.h"

/**
 * class extension定义了私有方法
 */
@interface Fraction()
-(void) reduce;
@end

@implementation Fraction
@synthesize numerator, denominator;

- (instancetype)initWith:(int)n over:(int)d {
  self = [super init];
  if (self)
    [self setTo:n over:d];
  return self;
}

- (void)print {
  NSLog(@"%i/%i", numerator, denominator);

}

- (double)convertToNum {
  if (denominator != 0)
    return (double) numerator / denominator;
  else
    return NAN;
}

- (void)setTo:(int)n over:(int)d {
  numerator = n;
  denominator = d;
}

- (void)reduce {
  int u = numerator;
  int v = denominator;
  int temp;

  while (v != 0) {
    temp = u % v;
    u = v;
    v = temp;
  }

  numerator /= u;
  denominator /= u;
}


@end
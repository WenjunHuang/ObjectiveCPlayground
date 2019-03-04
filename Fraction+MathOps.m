#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)
- (Fraction *)add:(Fraction *)f {
  Fraction *result = [[Fraction alloc] initWith:self.numerator + f.numerator over:self.denominator + f.denominator];
  return result;
}

- (Fraction *)mul:(Fraction *)f {
  return nil;
}

@end
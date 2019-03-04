#import "Fraction+Stuff.h"

@implementation Fraction(Stuff)
- (id)copyWithZone:(nullable NSZone *)zone {
  if (zone) {
    NSZoneMalloc(zone,);
  }
  return nil;
}

- (void)encodeWithCoder:(NSCoder *)coder {

}

- (instancetype)initWithCoder:(NSCoder *)coder {
  return nil;
}


@end
#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator;
@property int denominator;

- (instancetype)initWith:(int)n over:(int)d;

- (void)print;

- (double)convertToNum;

- (void)setTo:(int)n over:(int)d;

@end
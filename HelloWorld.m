#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"

int main(int argc,char *argv[]) {
  @autoreleasepool {
    id dataValue;

    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] initWith:3 over:7];

    Complex *aComplex = [[Complex alloc] init];
    Complex *bComplex = [[Complex alloc] init];

    [aComplex setReal:10 andImaginary:20];
    [bComplex setReal:30 andImaginary:40];

    [aFraction setTo: 1 over: 4];
    [bFraction setTo: 1 over: 2];

    dataValue = aFraction;
    [dataValue print];

    dataValue = bComplex;
    [dataValue print];

    if ([aFraction isMemberOfClass:[Fraction class]])
      NSLog(@"Match!!");

    SEL action = @selector (setTo:over:);
    [aFraction performSelector:action withObject:9000 withObject:888];
    [aFraction print];

  }

  return 0;
}
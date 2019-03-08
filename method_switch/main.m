
#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSString(EOCMyAddition)
-(NSString*)eoc_myLowercaseString;
@end
@implementation NSString(EOCMyAddition)
-(NSString*)eoc_myLowercaseString {
  NSString *lowercase = [self eoc_myLowercaseString];
  NSLog(@"%@ => %@",self,lowercase);
  return lowercase;
}

@end
int main(){
  @autoreleasepool {
    Method originalMethod = class_getInstanceMethod([NSString class],@selector(lowercaseString));
    Method swappedMethod = class_getInstanceMethod([NSString class],@selector(eoc_myLowercaseString));
    method_exchangeImplementations(originalMethod, swappedMethod);

    NSString *string = @"Hello World";
    NSLog([string lowercaseString]);
  }

}
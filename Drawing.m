#import <Foundation/Foundation.h>
#import "Drawing.h"

@interface GraphicObject : NSObject
@end

@implementation GraphicObject
@end

@interface Rectangle : GraphicObject<Drawing>

@end

@implementation Rectangle
-(void) paint {
  NSLog(@"Rectangle paint called");
}
-(void) erase {
  NSLog(@"Rectangle erase called");
}
@end

int main(int argc,char* argv[]){
  @autoreleasepool {
    id rec = [[Rectangle alloc] init];
    if ([rec conformsToProtocol:@protocol(Drawing)] == YES) {
      NSLog(@"rec conformsToProtocol Drawing");
      [rec paint];
      [rec erase];
    }

  }

}
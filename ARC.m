#import <Foundation/Foundation.h>

@interface Foo : NSObject
- (void)dealloc;

+ (Foo *)makeFoo;
@end

@implementation Foo
+(Foo *) makeFoo {
  return [[Foo alloc] init];
}

- (void)dealloc {
  NSLog(@"dealloc called");
}
@end

int main(int argc, char const *argv[]) {
  __weak Foo *wf;
  __weak Foo *wmf;
  __weak NSArray *warray;
  @autoreleasepool {
    @autoreleasepool {
      Foo *f = [[Foo alloc] init];
      wf = f;
      NSLog(@"weak foo is %@", wf);
      NSArray *array = [NSArray arrayWithObjects:@"One", @"Two"];
      warray = array;

      NSLog(@"array is %@", warray);

      Foo *mf = [Foo makeFoo];
      wmf = mf;
      NSLog(@"weak maked foo is %@",wmf);
    }

    NSLog(@"weak foo is %@", wf);
    NSLog(@"array is %@", warray);
    NSLog(@"weak maked foo is %@",wmf);
    NSLog(@"outer pool");

  }

  return 0;

}
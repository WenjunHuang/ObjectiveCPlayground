#import "Foundation/Foundation.h"

typedef NS_ENUM(NSInteger,FooStyle) {
  UITableViewCellStyleDefault,
  UITableViewCellStyleValue1
};

typedef NS_OPTIONS(NSUInteger,FooOptions){
  RPOptionNone = 0,
  RPOptionRight = 1 << 0,
  RPOptionBottom = 1 << 1,
  RPOptionLeft = 1 << 2
};

int main(int argc,char *argv[]) {
  FooOptions options = RPOptionNone;
  options |= RPOptionRight;

  return 0;
}

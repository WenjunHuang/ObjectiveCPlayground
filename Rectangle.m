#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle {
  XYPoint *origin;
}
@synthesize width, height;

- (instancetype)init {
  self = [super init];
  if (self) {}
  return self;
}


- (XYPoint *)origin {
  return origin;
}

- (void)setOrigin:(XYPoint *)pt {
  if (!origin)
    origin = [[XYPoint alloc] init];

  origin.x = pt.x;
  origin.y = pt.y;
}

- (void)setWidth:(int)w andHeight:(int)h {
  width = w;
  height = h;
}

- (int)area {
  return width * height;
}

- (int)perimeter {
  return (2 * width + 2 * height);
}


@end
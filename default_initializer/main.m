#import <Foundation/Foundation.h>
#import <math.h>

@interface EOCRectangle : NSObject
@property(nonatomic, assign, readonly) float width;
@property(nonatomic, assign, readonly) float height;

- (id)initWithWidth:(float)width
          andHeight:(float)height;
@end

@implementation EOCRectangle

-(id)initWithWidth:(float)width andHeight:(float)height {
  if ((self = [super init])) {
    _width = width;
    _height = height;
  }
  return self;
}

-(id) init {
  return [self initWithWidth:5.0 andHeight:5.0];
}
@end

@interface EOCSquare:EOCRectangle
-(id) initWithDimension:(float) dimension;
@end

@implementation EOCSquare
-(id)initWithDimension:(float)dimension {
  return [super initWithWidth:dimension andHeight: dimension];
}

-(id)initWithWidth:(float)width andHeight:(float)height {
  float dimension = MAX(width,height);
  return [self initWithDimension:dimension];
}

@end
int main() {
  @autoreleasepool {
    EOCRectangle *rectangle = [[EOCRectangle alloc] init];
    NSLog(@"%f, %f",rectangle.width,rectangle.height);
  }


}
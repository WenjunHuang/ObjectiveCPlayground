#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject
@property int width, height;

- (instancetype)init;


- (XYPoint *)origin;

- (void)setOrigin:(XYPoint *)pt;

- (void)setWidth:(int)w andHeight:(int)h;

- (int)area;

- (int)perimeter;
@end
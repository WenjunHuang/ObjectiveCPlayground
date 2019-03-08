#import <Foundation/Foundation.h>

@interface EOCAutoDictionary : NSObject
@property(nonatomic, strong) NSString *string;
@property(nonatomic, strong) NSNumber *number;
@property(nonatomic, strong) NSDate *date;
@property(nonatomic, strong) id opaqueObject;
@end
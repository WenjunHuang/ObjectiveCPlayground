#import <objc/runtime.h>
#import "EOCAutoDictionary.h"

@interface EOCAutoDictionary ()
@property(nonatomic, strong) NSMutableDictionary *backingStore;
@end

static id autoDictionaryGetter(id self,SEL _cmd);
static void autoDictionarySetter(id self,SEL _cmd,id value);


@implementation EOCAutoDictionary
@dynamic string, number, date, opaqueObject;

- (id)init {
  if ((self = [super init])) {
    _backingStore = [NSMutableDictionary new];
  }
  return self;
}

+ (BOOL)resolveInstanceMethod:(SEL)selector {
  NSString *selectorString = NSStringFromSelector(selector);
  if ([selectorString hasPrefix:@"set"]) {
    class_addMethod(self, selector, (IMP) autoDictionarySetter, "v@:@");
  } else {
    class_addMethod(self,
                    selector,
                    (IMP) autoDictionaryGetter,
                    "@@:");
  }
  return YES;
}
@end

id autoDictionaryGetter(id self,SEL _cmd) {
  EOCAutoDictionary *typedSelf = (EOCAutoDictionary *)self;
  NSMutableDictionary *backingStore = typedSelf.backingStore;

  NSString *key = NSStringFromSelector(_cmd);

  return backingStore[key];
}

void autoDictionarySetter(id self,SEL _cmd,id value) {
  EOCAutoDictionary *typedSelf = (EOCAutoDictionary *)self;
  NSMutableDictionary *backingStore = typedSelf.backingStore;

  NSString *selectorString = NSStringFromSelector(_cmd);
  NSMutableString *key = [selectorString mutableCopy];
  [key deleteCharactersInRange:NSMakeRange(key.length - 1,1)];
  [key deleteCharactersInRange:NSMakeRange(0,3)];

  NSString *lowercase = [[key substringToIndex:1] lowercaseString];
  [key replaceCharactersInRange:NSMakeRange(0,1) withString:lowercase];

  if (value) {
    backingStore[key] = value;
  }else{
    [backingStore removeObjectForKey:key];
  }
}

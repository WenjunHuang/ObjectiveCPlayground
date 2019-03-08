#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface EOCPerson : NSObject
@property(copy) NSString *firstName;
@property(copy) NSString *lastName;
@property(nonatomic, readwrite, copy) NSString *habbit;
@property(nonatomic, getter=isOn) BOOL on;

- (NSString *)fullName;

- (void)setFullName:(NSString *)fullName;
@end

@interface EOCPerson ()
- (void)littleSecret;
@end

@implementation EOCPerson
@synthesize firstName = _myFirstName;
@synthesize lastName = _myLastName;

- (void)littleSecret {
  NSLog(@"You must not see me %@, %@", _myFirstName, _myLastName);
}

- (NSString *)fullName {
  return [NSString stringWithFormat:@"%@ %@",
                                    _myFirstName,
                                    _myLastName];
}

- (void)setFullName:(NSString *)fullName {
  NSArray *listItems = [fullName componentsSeparatedByCharactersInSet:@" "];
  _myFirstName = [listItems[0] copy];
  _myLastName = [listItems[1] copy];
}

- (BOOL)isEqual:(id)object {
  if (self == object) return YES;
  if ([self class] != [object class]) return NO;

  EOCPerson *otherPerson = (EOCPerson *) object;
  if (![_myFirstName isEqualToString:otherPerson.firstName])
    return NO;
  if (![_myLastName isEqualToString:otherPerson.lastName])
    return NO;

  return YES;
}

@end

@interface DBEOCPerson : NSManagedObject
@property NSString *firstName;
@property NSString *lastName;
@end

@implementation DBEOCPerson
@dynamic firstName, lastName;
@end

int main() {
  @autoreleasepool {
    EOCPerson *aPerson = [[EOCPerson alloc] init];
    aPerson.firstName = @"Bob";

    NSLog(aPerson.firstName);

    NSString *lastName = aPerson.lastName;
  }
}
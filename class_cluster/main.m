#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, EOCEmployeeType) {
  EOCEmployeeTypeDeveloper,
  EOCEmployeeTypeDesigner,
  EOCEmployeeTypeFinance
};

@interface EOCEmployee : NSObject

@property(nonatomic, copy) NSString *name;
@property(nonatomic) NSUInteger salary;

+ (EOCEmployee *)employeeWithType:(EOCEmployeeType)type;

- (void)doADaysWork;
@end

int main() {
  id maybeAnArray = @[@"1", @"2", @"3"];
  if ([maybeAnArray class] == [NSArray class])
    NSLog(@"an array");

  if ([maybeAnArray isKindOfClass:[NSArray class]])
    NSLog(@"a kind of array");
}
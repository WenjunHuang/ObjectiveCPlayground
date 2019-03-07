#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
  // number literal
  NSNumber *numberWithoutLiteral = [NSNumber numberWithInt:1];
  NSNumber *numberWithLiteral = @1;
  NSNumber *floatNumber = @2.5;
  NSNumber *doubleNumber = @3.14159;
  NSNumber *boolNumber = @YES;
  NSNumber *charNumber = @'a';

  NSArray *arrayWithoutLiterals = [NSArray arrayWithObjects:@"cat", @"dog", @"mouse", @"badger", nil];
  NSArray *animals = @[@"cat", @"dog", @"mouse", @"badger"];

  NSString *dog = [arrayWithoutLiterals objectAtIndex:1];
  dog = arrayWithoutLiterals[1];

  // dictionary
  // vale,key...nil
  NSDictionary *personData = [NSDictionary dictionaryWithObjectsAndKeys:
                                             @"Matt", @"firstname",
                                             @"Galloway", @"lastName",
                                             @28, @"age",
                                           nil];

  personData = @{@"firstName": @"Matt",
                 @"lastName": @"Galloway",
                 @"age": @28};

}
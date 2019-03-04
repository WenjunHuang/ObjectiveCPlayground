#import <Foundation/Foundation.h>

int main(int argc,char const *argv[]){
  @autoreleasepool {
    NSString *str1 = @"This is string A";
    NSString *str2 = @"This is string B";

    NSString *res;
    NSComparisonResult compareResult;

    NSLog(@"Length of str1: %lu",[str1 length]);

    res = [NSString stringWithString: str1];
    NSLog(@"copy: %@", res);

    str2 = [str1 stringByAppendingString: str2];
    NSLog(@"Concatenation: %@",str2);

    if ([str1 isEqualToString:res]== YES)
      NSLog(@"str1 == res");
    else
      NSLog(@"str1 != res");

    NSRange subRange = [str1 rangeOfString: @"string A"];
    NSLog(@"String is at index %lu, length is %lu",
      subRange.location,subRange.length);
  }

}
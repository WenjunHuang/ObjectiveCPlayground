#import <Foundation/Foundation.h>
#import "EOCAutoDictionary.h"

int main(){
  @autoreleasepool {
    EOCAutoDictionary *dict = [EOCAutoDictionary new];
    dict.date = [NSDate dateWithTimeIntervalSince1970:475372800];
    NSLog(@"dict.date = %@",dict.date);
  }

}
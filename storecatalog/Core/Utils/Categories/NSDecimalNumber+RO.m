//
//  NSDecimalNumber+RO.m
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "NSDecimalNumber+RO.h"

@implementation NSDecimalNumber (RO)

+ (NSDecimalNumber *)ro_decimalNumberWithString:(NSString *)numberValue
{
    if (numberValue) {
        NSString *value = [numberValue stringByReplacingOccurrencesOfString:@"," withString:@"."];
        return [NSDecimalNumber decimalNumberWithString:value];
    }
    return [NSDecimalNumber decimalNumberWithString:numberValue];
}

@end

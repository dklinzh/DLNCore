//
//  NSString+DLNMD5.m
//  DLNFoundation
//
//  Created by Linzh on 12/22/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import "NSString+DLNMD5.h"
#import<CommonCrypto/CommonDigest.h>

@implementation NSString (DLNMD5)

- (NSString *)dln_MD5_16_withCase:(StringCase)stringCase {
    //提取32位MD5散列的中间16位
    NSString *md5_32=[self dln_MD5_32_withCase:stringCase];
    NSString *result = [[md5_32 substringToIndex:24] substringFromIndex:8];//即9～25位
    
    return result;
}

- (NSString *)dln_MD5_32_withCase:(StringCase)stringCase {
    const char* str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), result);
    NSMutableString *ret = [NSMutableString string];
    for(int i = 0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02x", result[i]];
    }
    switch (stringCase) {
        case StringUppercase:
            return [ret uppercaseString];
        case StringLowercase:
            return [ret lowercaseString];
    }
}

- (NSString *)dln_MD5_64_withCase:(StringCase)stringCase {
    const char* str = [self UTF8String];
    unsigned char result[32];
    CC_MD5(str, (CC_LONG)strlen(str), result);
    NSMutableString *ret = [NSMutableString string];
    for(int i = 0; i<32; i++) {
        [ret appendFormat:@"%02x", result[i]];
    }
    switch (stringCase) {
        case StringUppercase:
            return [ret uppercaseString];
        case StringLowercase:
            return [ret lowercaseString];
    }
}
@end

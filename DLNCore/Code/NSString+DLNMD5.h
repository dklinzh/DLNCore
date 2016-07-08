//
//  NSString+DLNMD5.h
//  DLNFoundation
//
//  Created by Linzh on 12/22/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, StringCase) {
    StringUppercase, //大写
    StringLowercase, //小写
};

@interface NSString (DLNMD5)

/**
 *  MD5编码 (16位)
 *
 *  @param stringCase <#stringCase description#>
 *
 *  @return <#return value description#>
 */
- (NSString *)dln_MD5_16_withCase:(StringCase)stringCase;

/**
 *  MD5编码 (32位)
 *
 *  @param stringCase <#stringCase description#>
 *
 *  @return <#return value description#>
 */
- (NSString *)dln_MD5_32_withCase:(StringCase)stringCase;

/**
 *  MD5编码（64位）
 *
 *  @param stringCase <#stringCase description#>
 *
 *  @return <#return value description#>
 */
- (NSString *)dln_MD5_64_withCase:(StringCase)stringCase;
@end

//
//  NSString+DLNSHA.h
//  DLNFoundation
//
//  Created by Linzh on 12/22/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DLNSHA)

- (NSString *)dln_SHA1;
- (NSString *)dln_SHA224;
- (NSString *)dln_SHA256;
- (NSString *)dln_SHA384;
- (NSString *)dln_SHA512;
@end

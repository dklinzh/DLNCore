//
//  DLNAppInfo.h
//  DLNFoundation
//
//  Created by Linzh on 14-7-29.
//  Copyright (c) 2014年 Linzh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLNAppInfo : NSObject

+ (NSString *)appName;
+ (NSString *)appVersion;
+ (NSString *)appBuildVersion;
+ (NSString *)appBundleId;
+ (NSString *)bundleSeedId;
@end

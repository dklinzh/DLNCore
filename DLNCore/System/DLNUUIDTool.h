//
//  DLNUUIDTool.h
//  DLNFoundation
//
//  Created by Linzh on 12/23/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DLNUUIDTool : NSObject

/**
 *  Obtain Unique Device Identity
 *
 *  @return <#return value description#>
 */
+ (NSString *)getUDID;

+ (NSString *)getMacAddress NS_DEPRECATED_IOS(5_0, 7_0);
@end

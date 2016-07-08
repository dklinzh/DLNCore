//
//  NSObject+DLNInvokeAllMethod.h
//  DLNCore
//
//  Created by Linzh on 4/29/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DLNInvokeAllMethod)
/**
 *  Invoking all instance methods within the given selector, includes rewriten methods by category.
 *
 *  @param selector A selector to the instance method
 */
- (void)dln_invokeAllInstanceMethodWithSelector:(SEL)selector;

/**
 *  Invoking all class methods within the given selector, includes rewriten methods by category.
 *
 *  @param selector A selector to the class method
 */
+ (void)dln_invokeAllClassMethodWithSelector:(SEL)selector;
@end

//
//  NSObject+DLNProperty.h
//  DLNCore
//
//  Created by Linzh on 4/29/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (DLNProperty)
/**
 *  Add a property of id type, a strong reference to the associated object.
 *
 *  @param name property name
 */
+ (void)dln_addObjectProperty:(NSString *)name;

/**
 *  Add a property of type id with objc_AssociationPolicy.
 *
 *  @param name   property name
 *  @param policy Policies related to associative references.
 */
+ (void)dln_addObjectProperty:(NSString *)name associationPolicy:(objc_AssociationPolicy)policy;

/**
 *  Add a property of basic type, e.g. int, float, BOOL, CGRect etc.
 *
 *  @param name property name
 *  @param type encodingType of property. e.g. @‎encode(int)
 */
+ (void)dln_addBasicProperty:(NSString *)name encodingType:(char *)type;
@end

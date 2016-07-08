//
//  NSObject+DLNInvokeAllMethod.m
//  DLNCore
//
//  Created by Linzh on 4/29/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import "NSObject+DLNInvokeAllMethod.h"
#import <objc/runtime.h>

@implementation NSObject (DLNInvokeAllMethod)

static inline void __dln_invoke_all_method(id self, SEL selecotr) {
    //1. 根据self，获取class
    Class class = object_getClass(self);
    
    //2. 获取方法列表
    uint count;
    Method *methodList = class_copyMethodList(class, &count);
    
    //3. 遍历方法列表
    for (int i = 0; i < count; i++) {
        Method method = methodList[i];
        //4. 根据SEL查找方法
        if (!sel_isEqual(selecotr, method_getName(method))) {
            continue;
        }
        
        //5. 获取方法的实现
        IMP implement = method_getImplementation(method);
        
        //6. 直接调用方法的实现
        ((void(*)(id,SEL))implement)(self, selecotr);
    }
}

- (void)dln_invokeAllInstanceMethodWithSelector:(SEL)selector {
    __dln_invoke_all_method(self, selector);
}

+ (void)dln_invokeAllClassMethodWithSelector:(SEL)selector {
    __dln_invoke_all_method(self, selector);
}
@end

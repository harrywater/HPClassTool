//
//  HPClassTool.m
//  HPClassTool
//
//  Created by 王辉平 on 2018/8/30.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import "HPClassTool.h"
#import <objc/runtime.h>

@implementation HPClassTool

//=======================private C fun =========================
static void printClassMethod(Class cls)
{
    
    unsigned int count = 0;
    Method* methods = class_copyMethodList(cls, &count);
    NSMutableString* mutStr = [NSMutableString string];
    for(int i = 0;i<count;i++){
        Method method = methods[i];
        SEL methodSel = method_getName(method);
        NSString* str = [NSString stringWithFormat:@"--%@",NSStringFromSelector(methodSel)];
        [mutStr appendString:str];
    }
    
    NSLog(@"类的对象方法名=%@\n",mutStr);
}
static void printClassIvars(Class cls)
{
    unsigned int count = 0;
    Ivar* ivars = class_copyIvarList(cls, &count);
    NSMutableString* mutStr = [NSMutableString string];
    for(int i = 0;i<count;i++){
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSString* str = [NSString stringWithFormat:@"--%@",[NSString stringWithUTF8String:name]];
        [mutStr appendString:str];
    }
    
    NSLog(@"类的成员变量名称=%@\n",mutStr);
}

static void printClassProperty(Class cls)
{
    unsigned int count = 0;
    objc_property_t* property_ts = class_copyPropertyList(cls, &count);
    NSMutableString* mutStr = [NSMutableString string];
    for(int i = 0;i<count;i++){
        objc_property_t property = property_ts[i];
        const char *name = property_getName(property);
        NSString* str = [NSString stringWithFormat:@"--%@",[NSString stringWithUTF8String:name]];
        [mutStr appendString:str];
    }
    NSLog(@"类的属性列表=%@\n",mutStr);
}

//========================================================

+(void)printClassMethod:(Class)cls
{
    printClassMethod(cls);
}
+(void)printClassIvars:(Class)cls
{
    printClassIvars(cls);
}
+(void)printClassProperties:(Class)cls
{
    printClassProperty(cls);
}
@end

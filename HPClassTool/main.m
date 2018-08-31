//
//  main.m
//  HPClassTool
//
//  Created by 王辉平 on 2018/8/30.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HPPerson.h"
#import "HPStudent.h"
#import "HPClassTool.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSLog(@"no==%d",[HPStudent getNo]);
        
        Class metaClass = object_getClass([HPStudent class]);
        [HPClassTool printClassMethod:metaClass];
//        [HPClassTool printClassMethod:[HPPerson class]];
//
//        [HPClassTool printClassIvars:[HPStudent class]];
//        [HPClassTool printClassIvars:[HPPerson class]];
//
//        [HPClassTool printClassProperties:[HPStudent class]];
//        [HPClassTool printClassProperties:[HPPerson class]];
        
    }
    return 0;
}

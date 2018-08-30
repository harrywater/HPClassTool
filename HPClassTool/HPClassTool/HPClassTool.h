//
//  HPClassTool.h
//  HPClassTool
//
//  Created by 王辉平 on 2018/8/30.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HPClassTool : NSObject

+(void)printClassMethod:(Class)cls;
+(void)printClassIvars:(Class)cls;
+(void)printClassProperties:(Class)cls;

@end

//
//  HPPerson.h
//  HPClassTool
//
//  Created by 王辉平 on 2018/8/30.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HPPerson : NSObject
{
    @public
    int _age;
    
    @private
    char *class_des;
    
}
@property(nonatomic,copy)NSString* des;
@property(nonatomic,copy)NSString* name;
@end

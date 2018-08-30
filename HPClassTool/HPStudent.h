//
//  HPStudent.h
//  HPClassTool
//
//  Created by 王辉平 on 2018/8/30.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import "HPPerson.h"

@interface HPStudent : HPPerson
{
    int _no;
}
@property(nonatomic,copy)NSString* className;
@end

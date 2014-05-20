//
//  SHObject.m
//  UMSocial_Sdk_Demo
//
//  Created by sherwin on 14-5-16.
//  Copyright (c) 2014年 yeahugo. All rights reserved.
//

#import "SHObject.h"

//C   API TESTING
void CAPI_getMethodInfo(id self, SEL _cmd)
{
    return ;
}

@interface SHObject ()
{
    int m_cate_int2;
    NSString *m_cate_str2;
}
@property (nonatomic, retain) NSString *cate_pro_String2;

-(int)  method_cate_GetInt2_returnInt;
-(float)  method_cate_GetInt2_returnFloat;
-(void)  method_cate_SetInt2:(int) nValue Float:(float) fValue String:(NSString*) strValue;
@end


@implementation SHObject

//TOO头文件声明函数
-(int) methodGetAll1:(NSString*) info
{
    return 1;
}

-(NSString*) methodGetAll1:(NSString*) info Text:(NSString*) text
{
    return @"1";
}
-(NSInteger) methodGetAll1:(NSString*) info SHObject:(SHObject*) obj
{
    return 1;
}

-(void) methodGetAll1
{
    return ;
}

//TOO 分类附加函数
-(int)  method_cate_GetInt2_returnInt
{
    return (int)2;
}
-(float)  method_cate_GetInt2_returnFloat
{
    return (float)2.22;
}
-(void)  method_cate_SetInt2:(int) nValue Float:(float) fValue String:(NSString*) strValue
{
    return;
}

//TOO 内部无声明函数
-(NSString*) method_inline_getInfo
{
    return @"2";
}

-(void) method_inline_setInt2:(int) nValue
{
    return;
}

-(SHObject*) method_inline_setObje:(NSObject*) obj
{
    return nil;
}

//类方法
+(int) class_methodGetAll1:(NSString*) info
{
    return 3;
}

+(NSString*) class_methodGetAll1:(NSString*) info Text:(NSString*) text
{
    return @"3";
}
@end

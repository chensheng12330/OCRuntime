//
//  SHObject.h
//  UMSocial_Sdk_Demo
//
//  Created by sherwin on 14-5-16.
//  Copyright (c) 2014年 yeahugo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHObject : NSObject
{
    //内部变量
    @private
    int m_int1;
     id m_id1;
    NSString *m_string1;
   
    @public
    NSDictionary *m_dict1;
}

//属性设置器
@property (nonatomic, retain) NSString *proString1;
@property (nonatomic, assign) NSInteger *proInteger1;
@property (nonatomic, copy)   NSArray *proArray;

//实例方法
-(int) methodGetAll1:(NSString*) info;
-(NSString*) methodGetAll1:(NSString*) info Text:(NSString*) text;
-(NSInteger) methodGetAll1:(NSString*) info SHObject:(SHObject*) obj;
-(void) methodGetAll1;

//类方法
+(int) class_methodGetAll1:(NSString*) info;
+(NSString*) class_methodGetAll1:(NSString*) info Text:(NSString*) text;


@end

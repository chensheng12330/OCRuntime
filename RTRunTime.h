//
//  RTRunTime.h
//  UMSocial_Sdk_Demo
//
//  Created by sherwin on 14-5-15.
//  Copyright (c) 2014年 yeahugo. All rights reserved.
//

#ifndef UMSocial_Sdk_Demo_RTRunTime_h
#define UMSocial_Sdk_Demo_RTRunTime_h

#import "RTIvar.h"      //变量
#import "RTMethod.h"    //方法
#import "RTProperty.h"  //属性设置
#import "RTProtocol.h"  //代理
#import "MARTNSObject.h"//
#import "RTUnregisteredClass.h"
#import <objc/message.h>
#import <objc/objc.h>

/****
 struct objc_method {
 SEL method_name;
 char *method_types;
 IMP method_imp;
 }
 
 @encode()
 
 Object   = @
 Selector = :
 void     = v
 class object= #
 integer  = i
 boolean  = b
 char     = c
 
 例: 
 method_types= "v@:"  -> v -> 返回值为void, @=>实体对象, : =>方法选择器
 void deallocImplementation(id self, SEL _cmd){}
 class_addMethod(Class, @selector(dealloc), (IMP) deallocImplementation, "v@:");
 OC中的每个类或实体方法，转化成C函数后，必包括 (id self, SEL _cmd)两个参数
 */
//*TOO
/*
 将方法名与方法所对应标示符绑定，注册到类的方法列表中
 */
//selector - SEL

//*TOO
/*
 指向函数在内存的物理地址入口，可供运行时指针跳转。
 */
//implememntation - IMP

//*TOO
/*
 将SEL, IMP以及相关的signature 进行绑定，生具所属类或对象的可用运行时方法，
 保存到类的method列表中。
 方法各属性之前的转换索取，可通过它进行转换。
 */
//method   - Method


#endif

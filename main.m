//
//  main.m
//  UMSocialSDKDemo
//
//  Created by yeahugo on 12-9-18.
//  Copyright (c) 2012年 yeahugo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "SHObject.h"
#import "RTRunTime.h"



int main(int argc, char *argv[])
{
    
    //TOO Class
    NSArray *ary,*ary1,*ary2,*ary3,*ary4;
    
    ary  = [SHObject rt_ivars];
    
    /* TOO U1
     method_invoke
     method_invoke_stret
     method_getName
     method_getImplementation
     method_getTypeEncoding
     method_copyReturnType
     method_copyArgumentType
     method_getReturnType
     method_getNumberOfArguments
     method_getArgumentType
     method_getDescription
     method_setImplementation
     method_exchangeImplementations
     */
    ary1 = [SHObject rt_methods];
    RTMethod * rt_method = ary1[0];
    Method oc_method = rt_method.method;
    
    //method_getNumberOfArguments
    int nArgs = method_getNumberOfArguments(oc_method);
    
    NSMutableString *muStr = [NSMutableString new];
    char *argType;
    for (int i=0; i< nArgs; i++) {
       argType = method_copyArgumentType(oc_method,i);
        [muStr appendFormat:@"[%d=%s] ",i,argType];
    }
    //
    
    //method_getReturnType
    size_t lenth = 100;
    char *retunType = malloc(lenth);
    method_getReturnType(oc_method,retunType,lenth);
    
    //
    
    
    ary2 = [SHObject rt_properties];
    
    
    ary3 = [SHObject rt_protocols];
    
    
    ary4 = [SHObject rt_subclasses];
    
    //TOO Object
    SHObject *obj = [[SHObject alloc] init];
    
    
    return 1;
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

//
//  NSObject+KVO.h
//  DDKVODemo
//
//  Created by yongqiang on 2017/3/10.
//  Copyright © 2017年 yongqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^DDObservingBlock)(id observedObject, NSString *observedKey, id oldValue, id newValue);

@interface NSObject (KVO)

- (void)DD_addObserver:(NSObject *)observer forKey:(NSString *)key withBlock:(DDObservingBlock)block;

- (void)DD_removeObserver:(NSObject *)observer forKey:(NSString *)key;

//- (void)DD_addObserver:

@end

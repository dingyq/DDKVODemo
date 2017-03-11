//
//  ViewController.m
//  DDKVODemo
//
//  Created by yongqiang on 2017/3/10.
//  Copyright © 2017年 yongqiang. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+KVO.h"

@interface ViewController ()

@property (nonatomic, copy) NSString *testName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.testName = @"dick";
    [self DD_addObserver:self forKey:@"testName" withBlock:^(id observedObject, NSString *observedKey, id oldValue, id newValue) {
        NSLog(@"oldValue is %@, newValue is %@", oldValue, newValue);
    }];
    
    self.testName = @"ding dick";
}

- (void)dealloc {
    [self DD_removeObserver:self forKey:@"testName"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ViewController.m
//  11-Block
//
//  Created by ma c on 16/4/20.
//  Copyright © 2016年 lu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, copy) void(^myBlock)();

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.myBlock = ^{
        
        NSLog(@"我被执行了");
    };
    
    [self loadData:^{
        
        NSLog(@"被毁掉了");
    }];
}

- (void)loadData:(void (^)())finished {
    
    NSLog(@"执行耗时操作");
    //毁掉通知调用者
    finished();
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"===");
    self.myBlock();
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"%@", [NSThread currentThread]);
        NSLog(@"执行耗时操作");
        dispatch_async(dispatch_get_main_queue(), ^{
            
            NSLog(@"%@", [NSThread currentThread]);
            NSLog(@"回到主线程更新UI");
        });
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

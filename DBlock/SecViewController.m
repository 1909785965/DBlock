//
//  SecViewController.m
//  DBlock
//
//  Created by SR Zhang on 2020/9/14.
//  Copyright © 2020 SR Zhang. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor purpleColor]];
    NSLog(@"实例化SecViewController");

}

-(void)testReturnBlock:(block)testBlock{
    
    testBlock(@"通过另一个视图Block回调值");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"第二个视图被点击");
    if (self.aBlock) {
        self.aBlock(@"回调传值");
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

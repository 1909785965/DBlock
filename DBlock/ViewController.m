//
//  ViewController.m
//  DBlock
//
//  Created by SR Zhang on 2020/9/14.
//  Copyright © 2020 SR Zhang. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "BlockView.h"


@interface ViewController ()

@end

@implementation ViewController

 

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
        
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
//    NSLog(@"第一个视图被点击");
//    SecViewController * vc = [[SecViewController alloc]init];
//    vc.aBlock = ^(NSString *str) {
//        NSLog(@"33333=%@",str);
//    };
//   [self presentViewController:vc animated:YES completion:nil];
    
    SecViewController * vc = [[SecViewController alloc]init];
    [vc testReturnBlock:^(NSString *str) {
        NSLog(@"从ViewController的Block传回的值=%@",str);
    }];
    
    
    BlockView * view = [[BlockView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [view getBlockFromViewControll:^(NSString *aStr) {
         NSLog(@"从ViewBlock传回的值=%@",aStr);
    }];
    [self.view addSubview:view];
    
    
}


-(void)blockType{
    
    void(^blockName)();
    blockName = ^(){
        NSLog(@"调用无参无返回值");
    };
    blockName();
    
    void(^block0)(void) = ^(){
        NSLog(@"调用无参无返回值1");
    };
    block0();
    
    
    int(^getNum)() = ^(){
        return 1;
    };
    NSLog(@"无参数有返回值=%d",getNum());
    
    
    void(^block1)(int) = ^(int a){
        NSLog(@"有参数无返回值=%d",a);
    };
    block1(2);
    
    
    int(^block2)(int,int) = ^(int a,int b){
        return a+b;
    };
    NSLog(@"有参数有返回值=%d",block2(3,3));
}


@end

//
//  BlockView.m
//  DBlock
//
//  Created by SR Zhang on 2020/9/15.
//  Copyright © 2020 SR Zhang. All rights reserved.
//

#import "BlockView.h"

@implementation BlockView


-(id)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
     
        [self setBackgroundColor:[UIColor greenColor]];
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
        btn.frame = CGRectMake(50, 100, 100, 100);
        [btn setBackgroundColor:[UIColor redColor]];
        [self addSubview:btn];
        [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}

-(void)getBlockFromViewControll:(ViewBlock)getBlock{
    
    NSLog(@"从ViewController获取到ViewBlock");
    self.vBlock = getBlock;
}


-(void)click:(id)sender{
    
    NSLog(@"点击按钮通过从ViewController传过来的Block进行数据回调");
    if (self.vBlock) {
        
        self.vBlock(@"这个是block回调的字符串");
    }
    [self removeFromSuperview];
}

@end

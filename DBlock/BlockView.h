//
//  BlockView.h
//  DBlock
//
//  Created by SR Zhang on 2020/9/15.
//  Copyright © 2020 SR Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ViewBlock) (NSString * aStr);

@interface BlockView : UIView

@property(strong,nonatomic)ViewBlock vBlock;

-(void)getBlockFromViewControll:(ViewBlock)getBlock;



@end



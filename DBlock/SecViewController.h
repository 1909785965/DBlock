//
//  SecViewController.h
//  DBlock
//
//  Created by SR Zhang on 2020/9/14.
//  Copyright © 2020 SR Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^block) (NSString * str);

@interface SecViewController : UIViewController

@property(strong,nonatomic)block aBlock;

-(void)testReturnBlock:(block)testBlock;

@end



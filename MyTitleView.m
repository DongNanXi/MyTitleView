//
//  MyTitleView.m
//  MyUI
//
//  Created by admin on 2017/11/9.
//  Copyright © 2017年 rxd. All rights reserved.
//

#import "MyTitleView.h"

#define lineW 30
#define titleW self.frame.size.width
#define titleH self.frame.size.height


@interface MyTitleView ()

@property(nonatomic,strong) NSMutableArray * aryBtn;
@property(nonatomic,strong) UILabel * labline;

@end

@implementation MyTitleView


- (void)subviews:(NSArray *)titleAry defaultColor:(UIColor *)defaultColor selectedColor:(UIColor *)selectedColor{
    
    UIColor * defaultcolor = defaultColor ? defaultColor : [UIColor brownColor];
    UIColor * selectedcolor = selectedColor ? selectedColor : [UIColor redColor];
    
    self.backgroundColor = [UIColor whiteColor];
    self.aryBtn  = [NSMutableArray arrayWithCapacity:0];
    
    for (int i = 0; i < titleAry.count; i++) {
        
        UIButton * btn = ({
            UIButton * but = [[UIButton alloc] init];
            but.frame = CGRectMake( titleW/titleAry.count * i,0, titleW/titleAry.count, titleH);
            but.titleLabel.font = [UIFont systemFontOfSize:14.f];
            [but setTitle:titleAry[i] forState:UIControlStateNormal];
            [but setTitleColor:defaultcolor forState:UIControlStateNormal];
            [but setTitleColor:selectedcolor forState:UIControlStateSelected];
            but.tag = i;
            [but addTarget:self action:@selector(butType:) forControlEvents:UIControlEventTouchUpInside];
            [self.aryBtn addObject:but];
            but;
        });

        [self addSubview:btn];
        
        if (i == 0) {
            
            self.labline = ({
                UILabel * lab = [[UILabel alloc] init];
                lab.frame = CGRectMake(0, titleH - 3, lineW, 3);
                lab.center = CGPointMake(btn.center.x, lab.center.y);
                lab.backgroundColor = selectedcolor;
                lab;
            });
            
            [self addSubview:self.labline];
        }
       
    }
    
}

#pragma mark - but
- (void)butType:(UIButton *) btn{
    
    self.indx(btn.tag);
    
    for (UIButton * but in self.aryBtn) {
        
        if (but.tag == btn.tag) {
            but.selected = YES;
            but.titleLabel.font = [UIFont systemFontOfSize:15.f];
        }else{
            but.selected = NO;
            but.titleLabel.font = [UIFont systemFontOfSize:14.f];
        }
        
    }
    
    [UIView animateWithDuration:0.2 animations:^{
        self.labline.center = CGPointMake(btn.center.x, self.labline.center.y);
    }];
}

@end

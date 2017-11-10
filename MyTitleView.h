//
//  MyTitleView.h
//  MyUI
//
//  Created by admin on 2017/11/9.
//  添加UI拿出来，方便xib上直接用
//  Copyright © 2017年 rxd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTitleView : UIView

/**
 title 返回
 */
@property(nonatomic,copy)void(^indx)(NSInteger indx);

/**
 
 添加title
 @param titleAry 标题数组
 @param defaultColor 默认颜色
 @param selectedColor 选中颜色
 */
- (void)subviews:(NSArray *) titleAry defaultColor:(UIColor *)defaultColor selectedColor:(UIColor *) selectedColor;


@end

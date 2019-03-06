//
//  UIView+SKPageFrame.h
//  SKPageController
//
//  Created by sunke on 2017/4/5.
//  Copyright © 2017年 sunke. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIView (SKPageFrame)


@property (nonatomic , assign) CGFloat sk_width;
@property (nonatomic , assign) CGFloat sk_height;
@property (nonatomic , assign) CGSize  sk_size;
@property (nonatomic , assign) CGFloat sk_x;
@property (nonatomic , assign) CGFloat sk_y;
@property (nonatomic , assign) CGPoint sk_origin;
@property (nonatomic , assign) CGFloat sk_centerX;
@property (nonatomic , assign) CGFloat sk_centerY;
@property (nonatomic , assign) CGFloat sk_right;
@property (nonatomic , assign) CGFloat sk_bottom;

- (BOOL)intersectWithView:(UIView *)view;

+ (instancetype)sk_viewFromXib;
- (BOOL)isShowingOnKeyWindow;

@end


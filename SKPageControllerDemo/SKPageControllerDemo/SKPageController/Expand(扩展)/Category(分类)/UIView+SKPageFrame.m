//
//  UIView+SKPageFrame.m
//  SKPageController
//
//  Created by sunke on 2017/4/5.
//  Copyright © 2017年 sunke. All rights reserved.
//


#import "UIView+SKPageFrame.h"

@implementation UIView (SKPageFrame)

- (CGFloat)sk_x
{
    return self.frame.origin.x;
}
- (void)setSk_x:(CGFloat)sk_x
{
    CGRect skFrame = self.frame;
    skFrame.origin.x = sk_x;
    self.frame = skFrame;
}

- (CGFloat)sk_y
{
    return self.frame.origin.y;
}
- (void)setSk_y:(CGFloat)sk_y
{
    CGRect skFrame = self.frame;
    skFrame.origin.y = sk_y;
    self.frame = skFrame;
}

- (CGPoint)sk_origin
{
    return self.frame.origin;
}
- (void)setSk_origin:(CGPoint)sk_origin
{
    CGRect skFrame = self.frame;
    skFrame.origin = sk_origin;
    self.frame = skFrame;
}

- (CGFloat)sk_width
{
    return self.frame.size.width;
}
- (void)setSk_width:(CGFloat)sk_width
{
    CGRect skFrame = self.frame;
    skFrame.size.width = sk_width;
    self.frame = skFrame;
}

-(CGFloat)sk_height
{
    return self.frame.size.height;
}
- (void)setSk_height:(CGFloat)sk_height
{
    CGRect skFrame = self.frame;
    skFrame.size.height = sk_height;
    self.frame = skFrame;
}

- (CGSize)sk_size
{
    return self.frame.size;
}
- (void)setSk_size:(CGSize)sk_size
{
    CGRect skFrame = self.frame;
    skFrame.size = sk_size;
    self.frame = skFrame;
}

-(CGFloat)sk_centerX{
    
    return self.center.x;
}

- (void)setSk_centerX:(CGFloat)sk_centerX{
    
    CGPoint skFrmae = self.center;
    skFrmae.x = sk_centerX;
    self.center = skFrmae;
}

- (CGFloat)sk_centerY{
    
    return self.center.y;
}

- (void)setSk_centerY:(CGFloat)sk_centerY{
    
    CGPoint skFrame = self.center;
    skFrame.y = sk_centerY;
    self.center = skFrame;
}

- (CGFloat)sk_right{
    
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)sk_bottom{
    
    return CGRectGetMaxY(self.frame);
}

- (void)setSk_right:(CGFloat)sk_right{
    
    self.sk_x = sk_right - self.sk_width;
}

- (void)setSk_bottom:(CGFloat)sk_bottom{
    
    self.sk_y = sk_bottom - self.sk_height;
}

- (BOOL)intersectWithView:(UIView *)view{
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    CGRect selfRect = [self convertRect:self.bounds toView:window];
    CGRect viewRect = [view convertRect:view.bounds toView:window];
    return CGRectIntersectsRect(selfRect, viewRect);
}

- (BOOL)isShowingOnKeyWindow {
    // 主窗口
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    // 以主窗口左上角为坐标原点, 计算self的矩形框
    CGRect newFrame = [keyWindow convertRect:self.frame fromView:self.superview];
    CGRect winBounds = keyWindow.bounds;
    
    // 主窗口的bounds 和 self的矩形框 是否有重叠
    BOOL intersects = CGRectIntersectsRect(newFrame, winBounds);
    
    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && intersects;
}

+ (instancetype)sk_viewFromXib
{
    return [[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}



@end


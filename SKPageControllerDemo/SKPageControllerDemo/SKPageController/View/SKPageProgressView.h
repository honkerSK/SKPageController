//
//  SKPageProgressView.h
//  SKPageController
//
//  Created by sunke on 2017/4/5.
//  Copyright © 2017年 sunke. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface SKPageProgressView : UIView

/** 进度条 */
@property (nonatomic, assign) CGFloat progress;
/** 尺寸 */
@property (nonatomic, strong) NSMutableArray *itemFrames;
/** 颜色 */
@property (nonatomic, assign) CGColorRef color;

/** 是否拉伸 */
@property (nonatomic, assign) BOOL isStretch;

@end


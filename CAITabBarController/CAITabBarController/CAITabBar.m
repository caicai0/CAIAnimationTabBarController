//
//  CAITabBar.m
//  CAITabBarController
//
//  Created by liyufeng on 15/5/13.
//  Copyright (c) 2015年 liyufeng. All rights reserved.
//

#import "CAITabBar.h"
#import "UIView+showBorder.h"

@implementation CAITabBar

- (void)animationAtIndex:(NSInteger)index{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat buttonWidth = width/self.items.count;
    [self findSubViewsWithClass:NSClassFromString(@"UITabBarSwappableImageView") from:0 to:2 block:^(UIView *view) {
        NSInteger buttonIndex = (NSInteger)(view.superview.frame.origin.x/buttonWidth);
        if (buttonIndex == index) {
            [UIView animateKeyframesWithDuration:0.2 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
                [UIView animateWithDuration:0.1 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
                    view.transform = CGAffineTransformMakeScale(1.2, 1.2);
                } completion:NULL];
                [UIView animateWithDuration:0.1 delay:0.1 options:UIViewAnimationOptionCurveLinear animations:^{
                    view.transform = CGAffineTransformMakeScale(1, 1);
                } completion:NULL];
            } completion:NULL];
        }
    }];
}

@end

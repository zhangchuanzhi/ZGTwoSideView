//
//  ZGTwoSideView.m
//  ZGTwoSideView
//
//  Created by offcn_zcz32036 on 2017/12/18.
//  Copyright © 2017年 cn. All rights reserved.
//

#import "ZGTwoSideView.h"

@implementation ZGTwoSideView
{
    BOOL _isTurning;//是否正在翻转
    BOOL _isReversed;//是否反面朝上
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _isTurning=NO;
        _isReversed=NO;
    }
    return self;
}
-(void)setTopView:(UIView *)topView
{
    _topView=topView;
    [self addSubview:_topView];
    [self bringSubviewToFront:_topView];
}
-(void)setBottomView:(UIView *)bottomView
{
    _bottomView=bottomView;
    [self addSubview:_bottomView];
    [self sendSubviewToBack:_bottomView];
}
 /**翻转   */
-(void)turnWithDuration:(NSTimeInterval)dutation completion:(void (^)(void))completion
{
    if (!self.topView||!self.bottomView) {
        NSAssert(NO, @"未设置topView或bottomView");
    }
    //正在动画中不能重复执行
    if (_isTurning) {
        return;
    }
    _isTurning=YES;
    if (_isReversed) {//此时反面朝上
        //从后面翻转到正面
        [UIView transitionFromView:self.bottomView toView:self.topView duration:dutation options:UIViewAnimationOptionTransitionFlipFromLeft completion:^(BOOL finished) {
            !completion?:completion();
            _isTurning=NO;
            _isReversed=NO;
        }];

    }
    else
    {//此时正面朝上
        //从正面翻转到反面
        [UIView transitionFromView:self.topView toView:self.bottomView duration:dutation options:UIViewAnimationOptionTransitionFlipFromRight completion:^(BOOL finished) {
            !completion?:completion();
            _isTurning=NO;
            _isReversed=YES;
        }];
    }
}
@end

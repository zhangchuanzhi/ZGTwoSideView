//
//  ZGTwoSideView.h
//  ZGTwoSideView
//
//  Created by offcn_zcz32036 on 2017/12/18.
//  Copyright © 2017年 cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZGTwoSideView : UIView
 /**顶部View   */
@property(nonatomic,strong)UIView*topView;
 /**底部View   */
@property(nonatomic,strong)UIView*bottomView;
 /**翻转   */
-(void)turnWithDuration:(NSTimeInterval)dutation completion:(void(^)(void))completion;
@end

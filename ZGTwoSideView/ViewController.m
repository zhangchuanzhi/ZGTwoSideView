//
//  ViewController.m
//  ZGTwoSideView
//
//  Created by offcn_zcz32036 on 2017/12/18.
//  Copyright © 2017年 cn. All rights reserved.
//

#import "ViewController.h"
#import "ZGTwoSideView.h"
@interface ViewController ()
@property(nonatomic,strong)ZGTwoSideView*twoSideView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor grayColor];
    self.twoSideView=[[ZGTwoSideView alloc]initWithFrame:CGRectMake(90, 90, 200, 200)];
    self.twoSideView.center=self.view.center;
    [self.view addSubview:self.twoSideView];

    UIImageView *topImgView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"funny"]];
    topImgView.frame=self.twoSideView.bounds;

    UIImageView *bottomImgView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"nice"]];
    bottomImgView.frame=self.twoSideView.bounds;

    self.twoSideView.topView=topImgView;
    self.twoSideView.bottomView=bottomImgView;

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.twoSideView turnWithDuration:2 completion:^{
        NSLog(@"翻转完成");
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}


@end

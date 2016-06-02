//
//  FirstVC.m
//  TestTabBarXIB~2
//
//  Created by dean on 2016/5/31.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "FirstVC.h"
#import "First02VC.h"
@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(40, 80, 60, 30)];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 60, 30)];
    [button2 setTitle:@"跳轉" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(toNextControllerWithNav:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}
-(void)backAction:(id)sender{
//    [self.parentViewController dismissModalViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
-(void)toNextControllerWithNav:(id)sender
{
    First02VC *first02 = [[First02VC alloc] init];
    [self.navigationController pushViewController:first02 animated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"FirstVC" bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *item = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:0];
        self.tabBarItem = item;
        self.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d",9];
    }
    
    
    ////如果要一個一個設置圖片的話，下面做的不完全，應該要設置uesr按下前和按下後的圖片
    //        self.title = @"Red";
    //        UIImage *image = [UIImage imageNamed:@"a.jpg"];
    //        CGImageRef imageRef = image.CGImage;
    //        self.tabBarItem.image = [[UIImage imageWithCGImage:imageRef scale:2 orientation:
    //                                  UIImageOrientationDown] imageWithRenderingMode:
    //                                 UIImageRenderingModeAlwaysOriginal];
    
    ////如果圖片有偏移的情況，用下面方式來處理（上，左，下，右）
    //        self.tabBarItem.imageInsets = UIEdgeInsetsMake(3.1, -10, -6, -10);
    
    
    return self;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

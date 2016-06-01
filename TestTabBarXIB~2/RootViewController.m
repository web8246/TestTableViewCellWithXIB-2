//
//  RootViewController.m
//  TestTabBarXIB~2
//
//  Created by dean on 2016/6/1.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "RootViewController.h"
#import "FirstVC.h"
#import "SecondVC.h"
@interface RootViewController ()<UITabBarControllerDelegate>

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.tabBarController.delegate = self;
    
//    FirstVC *vc1 = [FirstVC new];
//    SecondVC *vc2 = [SecondVC new];
//    self.tabBarController.viewControllers = [NSArray arrayWithObjects:vc1,vc2, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//改變tabbar高度
- (void)viewWillLayoutSubviews
{
    NSLog(@"ddd");
    
    CGRect tabFrame = self.tabBar.frame; //self.TabBar is IBOutlet of your TabBar
    tabFrame.size.height = 180;
    tabFrame.origin.y = self.view.frame.size.height - 180;
    self.tabBar.frame = tabFrame;
}
-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if(item.tag == 1){
        NSLog(@"TestOneController");
    }else if(item.tag == 2){
        NSLog(@"TestTwoController");
    }
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

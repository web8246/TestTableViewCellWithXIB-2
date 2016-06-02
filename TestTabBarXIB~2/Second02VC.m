//
//  Second02VC.m
//  TestTabBarXIB~2
//
//  Created by dean on 2016/6/2.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "Second02VC.h"
#import "SecondVC.h"
@interface Second02VC ()

@end

@implementation Second02VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 60, 30)];
    [button2 setTitle:@"back" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(toNextViewControllerWithPresentViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)toNextViewControllerWithPresentViewController:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"Second02VC" bundle:nibBundleOrNil];
    //    if (self) {
    //        UITabBarItem *item = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];
    //        self.tabBarItem = item;
    //        self.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d",3];
    //    }
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

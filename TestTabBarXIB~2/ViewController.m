//
//  ViewController.m
//  TestTabBarXIB~2
//
//  Created by dean on 2016/5/31.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"
#import "FirstVC.h"
#import "SecondVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (int i = 0; i < 10; i++)
    {
        NSString *uuid = [NSUUID UUID].UUIDString;
        NSLog(@"uuid 2 = %@",uuid);
    }
}
- (IBAction)btnPressed:(id)sender {
    RootViewController *vc = [RootViewController new];
    
    
    
    
//    FirstVC *vc1 = [FirstVC new];
//    SecondVC *vc2 = [SecondVC new];
//    vc.viewControllers = [NSArray arrayWithObjects:vc1,vc2, nil];
    
    
    ////上下兩種設置都一樣
//    NSMutableArray *items = [[NSMutableArray alloc] init];
//    FirstVC *testOne1 = [[FirstVC alloc] init];
//    [items addObject:testOne1];
//    SecondVC *twoController = [[SecondVC alloc] init];
//    [items addObject:twoController];
//    
//    [vc setViewControllers:items];
    
    
    //加入Navigation看看
    FirstVC *firstVC = [[FirstVC alloc]init];
    UINavigationController *firstNav = [[UINavigationController alloc]initWithRootViewController:firstVC];
    firstNav.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemRecents tag:0];
    
    SecondVC *secondVC = [[SecondVC alloc]init];
    UINavigationController *secondNav = [[UINavigationController alloc]initWithRootViewController:secondVC];
    secondNav.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemSearch tag:1];
    
    //通过数组存储；
    vc.viewControllers = [NSArray arrayWithObjects:firstNav,secondNav, nil];
    
    
    
    
    [vc.tabBar setBackgroundImage:[UIImage imageNamed:@"heretop-1.png"]];
    
//    [self presentModalViewController : tabBar animated:YES];
    
    [self presentViewController:vc animated:YES completion:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
        self = [super initWithNibName:@"ViewController" bundle:nibBundleOrNil];
        return self;
}


@end

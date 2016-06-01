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
//    vc.tabBarController.viewControllers = [NSArray arrayWithObjects:vc1,vc2, nil];
    
    NSMutableArray *items = [[NSMutableArray alloc] init];
    FirstVC *testOne1 = [[FirstVC alloc] init];
    [items addObject:testOne1];
    SecondVC *twoController = [[SecondVC alloc] init];
    [items addObject:twoController];
    
    [vc setViewControllers:items];
    
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

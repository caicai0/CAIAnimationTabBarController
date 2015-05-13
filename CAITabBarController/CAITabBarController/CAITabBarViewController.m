//
//  CAITabBarViewController.m
//  CAITabBarController
//
//  Created by liyufeng on 15/5/13.
//  Copyright (c) 2015年 liyufeng. All rights reserved.
//

#import "CAITabBarViewController.h"
#import "CAITabBar.h"

@interface CAITabBarViewController ()<UITabBarControllerDelegate>

@end

@implementation CAITabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSInteger index = [tabBarController.viewControllers indexOfObject:viewController];
    CAITabBar *tabBar = (CAITabBar *)self.tabBar;
    [tabBar animationAtIndex:index];
}

@end

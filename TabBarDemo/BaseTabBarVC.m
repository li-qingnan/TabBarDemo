//
//  BaseTabBarVC.m
//  TabBarDemo
//
//  Created by Yinan on 15/10/14.
//  Copyright © 2015年 Yinan. All rights reserved.
//

#import "BaseTabBarVC.h"
#import "HomeViewController.h"
#import "SettingViewController.h"

@interface BaseTabBarVC ()

@end

@implementation BaseTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initialSubVC];
}

- (void)initialSubVC
{
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    UINavigationController *homeNC = [[UINavigationController alloc] initWithRootViewController:homeVC];
    homeNC.tabBarItem.title = @"首页";
    homeNC.tabBarItem.image = [UIImage imageNamed:@"icon_home"];
    
    //设置
    SettingViewController *settingVC = [[SettingViewController alloc] init];
    UINavigationController *settingNC = [[UINavigationController alloc] initWithRootViewController:settingVC];
    settingNC.tabBarItem.title = @"设置";
    settingNC.tabBarItem.image = [UIImage imageNamed:@"icon_setting"];

    self.viewControllers = @[homeNC,settingNC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

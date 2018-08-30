//
//  ThirdViewController.m
//  ThemeApplication
//
//  Created by Jitendra Deore on 29/08/18.
//  Copyright © 2018 Jitendra Deore. All rights reserved.
//

#import "ThirdViewController.h"
#import "ThemeApplication-Swift.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.view.backgroundColor = [JDColorHelper getColorWithDhColor:JDColorAppSubviewBackground];
    self.titleLabel.textColor = [JDColorHelper getColorWithDhColor:JDColorAppText];
    self.subTitleLabel.textColor = [JDColorHelper getColorWithDhColor:JDColorAppSubText];
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

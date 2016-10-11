//
//  ViewController.m
//  HP_UtilExample
//
//  Created by 马海平 on 16/5/9.
//  Copyright © 2016年 MHP. All rights reserved.
//

#import "ViewController.h"
#import "HP_Util.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [HP_Util hexStringToColor:@"ff03e4"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

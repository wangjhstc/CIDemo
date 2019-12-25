//
//  FirstViewController.m
//  CIDemo
//
//  Created by microsparrow on 2019/12/19.
//  Copyright © 2019 sparrow. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()

@end


@implementation FirstViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    UIButton *btnFirst = [UIButton buttonWithType:UIButtonTypeCustom];
    btnFirst.frame = CGRectMake(0, 0, 50, 50);
    btnFirst.accessibilityLabel = @"btnBack";
    btnFirst.backgroundColor = [UIColor greenColor];
    [btnFirst addTarget:self action:@selector(touchBack:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnFirst];


    UIButton *btnFirst0 = [UIButton buttonWithType:UIButtonTypeCustom];
    btnFirst0.frame = CGRectMake(0, 100, 150, 50);
    btnFirst0.accessibilityLabel = @"btnTest";
    btnFirst0.backgroundColor = [UIColor greenColor];
    [btnFirst0 addTarget:self action:@selector(touchTest:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnFirst0];
}

- (void)touchTest:(id)sender
{
    NSLog(@"%s", __func__);
}

- (void)touchBack:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

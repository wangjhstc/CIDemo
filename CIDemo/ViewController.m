//
//  ViewController.m
//  CIDemo
//
//  Created by microsparrow on 2019/7/24.
//  Copyright © 2019 sparrow. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIButton *btnFirst = [UIButton buttonWithType:UIButtonTypeCustom];
    btnFirst.frame = CGRectMake(0, 0, 50, 50);
    btnFirst.accessibilityLabel = @"btnFirst";
    btnFirst.backgroundColor = [UIColor redColor];
    [btnFirst addTarget:self action:@selector(touchFirst:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnFirst];
}

- (void)touchFirst:(id)sender
{
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    firstVC.modalPresentationStyle = UIModalPresentationFullScreen;

    [self presentViewController:firstVC animated:YES completion:^{

    }];
}

@end

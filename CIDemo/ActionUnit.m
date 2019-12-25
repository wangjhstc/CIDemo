//
//  ActionUnit.m
//  CIDemo
//
//  Created by microsparrow on 2019/7/24.
//  Copyright © 2019 sparrow. All rights reserved.
//

#import "ActionUnit.h"


@implementation ActionUnit

- (void)testClangFormat
{
    int a = 5;

    switch (a) {
        case 1: {
            int b = 3;
        } break;
        case 5: {
        } break;

        default:
            break;
    }
}

- (void)setEnvirment:(NSInteger)envirment
{
    NSLog(@"aa");
}

@end

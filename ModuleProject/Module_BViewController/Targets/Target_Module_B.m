//
//  Target_Module_B.m
//  ModuleProject
//
//  Created by x_Swifter on 2018/11/22.
//  Copyright © 2018 x_Swifter. All rights reserved.
//

#import "Target_Module_B.h"
#import "Module_BViewController.h"

@implementation Target_Module_B

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    NSString *contentText = params[@"contentText"];
    Module_BViewController *viewController = [[Module_BViewController alloc] initWithContentText:contentText];
    return viewController;
}

@end

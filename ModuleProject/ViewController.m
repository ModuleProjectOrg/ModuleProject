//
//  ViewController.m
//  ModuleProject
//
//  Created by x_Swifter on 2018/11/22.
//  Copyright © 2018 x_Swifter. All rights reserved.
//

#import "ViewController.h"
#import <Module_ACategory/CTMediator+Module_A.h>
#import <HandyFrame/UIView+LayoutMethods.h>

@interface ViewController ()

@property (nonatomic, weak) UIButton *button;

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    self.button = button;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupUI];
    [self setupAction];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    [self setupLayout];
}

- (void)setupLayout {
    [self.button sizeToFit];
//    self.button.center = self.view.center;
    [self.button centerEqualToView:self.view];
}

- (void)setupUI {
    
    self.title = @"Demo";
    
    [self.button setTitle:@"Push AViewController" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
}

- (void)setupAction {
    [self.button addTarget:self action:@selector(pushAViewController) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushAViewController {
//    Module_AViewController *viewController = [[Module_AViewController alloc] init];
    UIViewController *viewController = [[CTMediator sharedInstance] Module_AViewControllerWithCallBack:^(NSString *result) {
        NSLog(@"%@", result);
    }];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end

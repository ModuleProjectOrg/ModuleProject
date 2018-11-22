//
//  Module_AViewController.m
//  ModuleProject
//
//  Created by x_Swifter on 2018/11/22.
//  Copyright © 2018 x_Swifter. All rights reserved.
//

#import "Module_AViewController.h"
#import "Module_BViewController.h"

@interface Module_AViewController ()

@property (nonatomic, weak) UIButton *button;

@end

@implementation Module_AViewController

- (void)loadView {
    [super loadView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    self.button = button;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupUI];
    [self setupAction];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self setupLayout];
}

- (void)setupLayout {
    [self.button sizeToFit];
    self.button.center = self.view.center;
}

- (void)setupUI {
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"AController";
    
    [self.button setTitle:@"Push BViewController" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
}

- (void)setupAction {
    [self.button addTarget:self action:@selector(pushBViewController) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushBViewController {
    Module_BViewController *viewController = [[Module_BViewController alloc] initWithContentText:@"Hello World!"];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end

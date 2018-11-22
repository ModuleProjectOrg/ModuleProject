//
//  Module_BViewController.m
//  ModuleProject
//
//  Created by x_Swifter on 2018/11/22.
//  Copyright © 2018 x_Swifter. All rights reserved.
//

#import "Module_BViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>

@interface Module_BViewController ()

@property (nonatomic, weak) UILabel *contentLabel;

@end

@implementation Module_BViewController

- (UILabel *)contentLabel {
    if (_contentLabel == nil) {
        UILabel *contentLabel = [[UILabel alloc] init];
        [self.view addSubview:contentLabel];
        _contentLabel = contentLabel;
    }
    return _contentLabel;
}

- (instancetype)initWithContentText:(NSString *)contentText {
    self = [super init];
    if (self) {
        self.contentLabel.text = contentText;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupUI];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    [self setupLayout];
}

- (void)setupUI {
    self.title = @"BController";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.contentLabel.textColor = [UIColor blackColor];
}

- (void)setupLayout {
    [self.contentLabel sizeToFit];
//    self.contentLabel.center = self.view.center;
    [self.contentLabel centerEqualToView:self.view];
}

@end

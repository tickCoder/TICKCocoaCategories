//
//  UIButton_Round_ViewController.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIButton_Round_ViewController.h"
#import "UIButton+TICKRound.h"

@interface UIButton_Round_ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *demoBtn;
@end

@implementation UIButton_Round_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _demoBtn.showsTouchWhenHighlighted = true;
    [_demoBtn setTitle:@"xxx" forState:UIControlStateNormal];
    _demoBtn.imageView.contentMode = UIViewContentModeCenter;
    _demoBtn.contentMode = UIViewContentModeCenter;
    [_demoBtn tick_makeButtonRound];
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

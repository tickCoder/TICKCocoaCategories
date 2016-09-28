//
//  UIImage_ColorMode_ViewController.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.12.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIImage_ColorMode_ViewController.h"
#import "UIImage+TICKColorMode.h"

@interface UIImage_ColorMode_ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *demoImageView;
@property (weak, nonatomic) IBOutlet UIImageView *demoImageView2;
@end

@implementation UIImage_ColorMode_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _demoImageView.image = [[UIImage imageNamed:@"test_image_color"] tick_imageOfGrayMode];
    _demoImageView2.image = [[UIImage imageNamed:@"test_image"] tick_imageOfGrayMode];
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

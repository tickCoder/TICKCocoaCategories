//
//  NSArrayDictArchiveViewController.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "NSArrayDictArchiveViewController.h"
#import "NSArray+TICKArchive.h"
#import "NSDictionary+TICKArchive.h"

@interface NSArrayDictArchiveViewController ()
@property (nonatomic, copy) NSString *arrayPath;
@property (nonatomic, copy) NSString *dictPath;
@property (nonatomic, strong) NSArray *demoArray;
@property (nonatomic, strong) NSDictionary *demoDict;
@end

@implementation NSArrayDictArchiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    self.demoArray = @[@"helloworld", @(13), @(false)];
    self.demoDict = @{@"name": @"helloworld", @"age": @(111), @"married": @(false)};
    self.arrayPath = [docPath stringByAppendingPathComponent:@"array.archive"];
    self.dictPath = [docPath stringByAppendingPathComponent:@"dict.archive"];
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
- (IBAction)arrayArchiveAction:(id)sender {
    [NSArray tick_archiveArray:self.demoArray toFile:self.arrayPath];
}
- (IBAction)arrayUnarchiveAction:(id)sender {
    NSLog(@"%@", [NSArray tick_arrayWithArchiveFile:self.arrayPath]);
}
- (IBAction)dictArchiveAction:(id)sender {
    [NSDictionary tick_archiveDictionary:self.demoDict toFile:self.dictPath];
}
- (IBAction)dictUnarchiveAction:(id)sender {
    NSLog(@"%@", [NSDictionary tick_dictionaryWithArchiveFile:self.dictPath]);
}

@end

//
//  EcardsViewController.m
//  Mid Autumn Greeting Cards
//
//  Created by evandro on 9/18/20.
//  Copyright © 2020 evandro. All rights reserved.
//

#import "EcardsViewController.h"
#import "ShareViewController.h"

@interface EcardsViewController ()

@end

@implementation EcardsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ShareViewController *shareVC = [segue destinationViewController];
    UIButton *btn = (UIButton*)sender;
    shareVC.shareImage = btn.currentBackgroundImage;
}


@end

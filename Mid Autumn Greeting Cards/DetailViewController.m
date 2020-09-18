//
//  DetailViewController.m
//  Mid Autumn Greeting Cards
//
//  Created by evandro on 9/18/20.
//  Copyright © 2020 evandro. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.txtContent setText:self.strContent];
}

@end

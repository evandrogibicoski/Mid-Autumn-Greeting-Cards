//
//  ShareViewController.m
//  Mid Autumn Greeting Cards
//
//  Created by bigstar on 9/19/20.
//  Copyright © 2020 evandro. All rights reserved.
//

#import "ShareViewController.h"

@interface ShareViewController ()

@end

@implementation ShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.txtMessage.layer.borderColor = [UIColor grayColor].CGColor;
    self.txtMessage.layer.borderWidth = 1.0;
    self.txtMessage.layer.cornerRadius = 5.0f;
}

- (void)viewWillAppear:(BOOL)animated {
    [self.imgShare setImage:self.shareImage];
}

- (IBAction)share:(id)sender {
    NSString *message = self.txtMessage.text;
    NSArray *activityItems = @[self.shareImage, message];
    UIActivityViewController *activityViewControntroller = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    activityViewControntroller.excludedActivityTypes = @[];
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        activityViewControntroller.popoverPresentationController.sourceView = self.view;
        activityViewControntroller.popoverPresentationController.sourceRect = CGRectMake(self.view.bounds.size.width/2, self.view.bounds.size.height/4, 0, 0);
    }
    [self presentViewController:activityViewControntroller animated:true completion:nil];
    
}

@end

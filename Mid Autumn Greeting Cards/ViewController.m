//
//  ViewController.m
//  Mid Autumn Greeting Cards
//
//  Created by evandro on 9/18/20.
//  Copyright © 2020 evandro. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.btnEcards.layer.borderColor = [UIColor systemOrangeColor].CGColor;
    self.btnEcards.layer.borderWidth = 2.0;
    self.btnEcards.layer.cornerRadius = 5.0f;
    
    self.btnAbout.layer.borderColor = [UIColor systemOrangeColor].CGColor;
    self.btnAbout.layer.borderWidth = 2.0;
    self.btnAbout.layer.cornerRadius = 5.0f;
    
    self.btnWishes.layer.borderColor = [UIColor systemOrangeColor].CGColor;
    self.btnWishes.layer.borderWidth = 2.0;
    self.btnWishes.layer.cornerRadius = 5.0f;
    
    self.btnZhu.layer.borderColor = [UIColor systemOrangeColor].CGColor;
    self.btnZhu.layer.borderWidth = 2.0;
    self.btnZhu.layer.cornerRadius = 5.0f;
    
    self.btnZhuCh.layer.borderColor = [UIColor systemOrangeColor].CGColor;
    self.btnZhuCh.layer.borderWidth = 2.0;
    self.btnZhuCh.layer.cornerRadius = 5.0f;
    
    self.btnChangEr.layer.borderColor = [UIColor systemOrangeColor].CGColor;
    self.btnChangEr.layer.borderWidth = 2.0;
    self.btnChangEr.layer.cornerRadius = 5.0f;
    
    self.btnChangCh.layer.borderColor = [UIColor systemOrangeColor].CGColor;
    self.btnChangCh.layer.borderWidth = 2.0;
    self.btnChangCh.layer.cornerRadius = 5.0f;
    
    self.btnPrivacyPolicy.layer.borderColor = [UIColor systemOrangeColor].CGColor;
    self.btnPrivacyPolicy.layer.borderWidth = 2.0;
    self.btnPrivacyPolicy.layer.cornerRadius = 5.0f;
    
    NSString *strLegalPath = [[NSBundle mainBundle] pathForResource:@"LegalText" ofType:@"plist"];
    self.m_dic = [[NSMutableDictionary alloc] initWithContentsOfFile:strLegalPath];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];   //it hides the bar
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES]; // it shows the bar back
}


#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"about"]) {
        DetailViewController *detailVC = (DetailViewController*)[segue destinationViewController];
        detailVC.strContent = @"";
        detailVC.strContent = [self.m_dic objectForKey:@"about"];
        [detailVC.navigationItem setTitle:@"About"];
    }
    
    if ([[segue identifier] isEqualToString:@"wishes"]) {
        DetailViewController *detailVC = (DetailViewController*)[segue destinationViewController];
        detailVC.strContent = @"";
        detailVC.strContent = [self.m_dic objectForKey:@"wishes"];
        [detailVC.navigationItem setTitle:@"Wishes 祝福"];
    }
    
    if ([[segue identifier] isEqualToString:@"zhuyuanzhang"]) {
        DetailViewController *detailVC = (DetailViewController*)[segue destinationViewController];
        detailVC.strContent = @"";
        detailVC.strContent = [self.m_dic objectForKey:@"zhuyuanzhang"];
        [detailVC.navigationItem setTitle:@"Zhu YuanZhang"];
    }
    
    if ([[segue identifier] isEqualToString:@"zhuyuanzhang-ch"]) {
        DetailViewController *detailVC = (DetailViewController*)[segue destinationViewController];
        detailVC.strContent = @"";
        detailVC.strContent = [self.m_dic objectForKey:@"zhuyuanzhang-ch"];
        [detailVC.navigationItem setTitle:@"朱元璋"];
    }
    
    if ([[segue identifier] isEqualToString:@"changer"]) {
        DetailViewController *detailVC = (DetailViewController*)[segue destinationViewController];
        detailVC.strContent = @"";
        detailVC.strContent = [self.m_dic objectForKey:@"changer"];
        [detailVC.navigationItem setTitle:@"Chang Er"];
    }
    
    if ([[segue identifier] isEqualToString:@"changer-ch"]) {
        DetailViewController *detailVC = (DetailViewController*)[segue destinationViewController];
        detailVC.strContent = @"";
        detailVC.strContent = [self.m_dic objectForKey:@"changer-ch"];
        [detailVC.navigationItem setTitle:@"嫦娥奔月"];
    }
    
    if ([[segue identifier] isEqualToString:@"privacypolicy"]) {
        DetailViewController *detailVC = (DetailViewController*)[segue destinationViewController];
        detailVC.strContent = @"";
        detailVC.strContent = [self.m_dic objectForKey:@"privacypolicy"];
        [detailVC.navigationItem setTitle:@"Privacy Plicy"];
    }
}

@end

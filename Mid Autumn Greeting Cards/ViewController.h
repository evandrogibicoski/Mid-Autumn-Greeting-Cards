//
//  ViewController.h
//  Mid Autumn Greeting Cards
//
//  Created by evandro on 9/18/20.
//  Copyright © 2020 evandro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btnEcards;
@property (weak, nonatomic) IBOutlet UIButton *btnAbout;
@property (weak, nonatomic) IBOutlet UIButton *btnWishes;
@property (weak, nonatomic) IBOutlet UIButton *btnZhu;
@property (weak, nonatomic) IBOutlet UIButton *btnZhuCh;
@property (weak, nonatomic) IBOutlet UIButton *btnChangEr;
@property (weak, nonatomic) IBOutlet UIButton *btnChangCh;
@property (weak, nonatomic) IBOutlet UIButton *btnPrivacyPolicy;

@property (strong, nonatomic) NSMutableDictionary *m_dic;

@end


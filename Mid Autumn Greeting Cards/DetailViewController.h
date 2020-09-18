//
//  DetailViewController.h
//  Mid Autumn Greeting Cards
//
//  Created by evandro on 9/18/20.
//  Copyright © 2020 evandro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSString *strContent;
@property (weak, nonatomic) IBOutlet UITextView *txtContent;

@end

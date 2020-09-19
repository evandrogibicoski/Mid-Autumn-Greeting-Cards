//
//  ShareViewController.h
//  Mid Autumn Greeting Cards
//
//  Created by bigstar on 9/19/20.
//  Copyright © 2020 evandro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShareViewController : UIViewController
@property (strong, nonatomic) UIImage *shareImage;

@property (weak, nonatomic) IBOutlet UIImageView *imgShare;
@property (weak, nonatomic) IBOutlet UITextView *txtMessage;

@end

NS_ASSUME_NONNULL_END

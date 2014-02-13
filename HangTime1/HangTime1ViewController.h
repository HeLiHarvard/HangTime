//
//  HangTime1ViewController.h
//  HangTime1
//
//  Created by He Li on 1/3/14.
//  Copyright (c) 2014 He Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface HangTime1ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *labelresult;
@property (nonatomic, retain) IBOutlet UITextField *username;

@property (nonatomic, retain) IBOutlet UITextField *password;

@property (nonatomic, retain) IBOutlet UIButton *buttonSubmit;

- (IBAction)loginuser;

@end

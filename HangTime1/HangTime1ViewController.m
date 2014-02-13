//
//  HangTime1ViewController.m
//  HangTime1
//
//  Created by He Li on 1/3/14.
//  Copyright (c) 2014 He Li. All rights reserved.
//

#import "HangTime1ViewController.h"
#import <Parse/Parse.h>

@interface HangTime1ViewController ()

@end

@implementation HangTime1ViewController

@synthesize  labelresult;
@synthesize username;
@synthesize buttonSubmit;
@synthesize password;




- (IBAction)loginuser {
  
    
    PFUser *user = [PFUser user];
    user.username = username.text;
    user.password = password.text;
  
    // other fields can be set if you want to save more information
    user[@"phone"] = @"650-555-1233";
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
        }
    }];

    
    
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
   
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

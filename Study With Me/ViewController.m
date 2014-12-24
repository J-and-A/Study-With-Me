//
//  ViewController.m
//  Study With Me
//
//  Created by Archit Sood on 12/14/14.
//  Copyright (c) 2014 J&A. All rights reserved.
//

#import "ViewController.h"
#import <FacebookSDK/FacebookSDK.h>
#import <ParseFacebookUtils/PFFacebookUtils.h>
#import <Parse/Parse.h>


@interface ViewController ()


@end

@implementation ViewController

-(IBAction)loginClicked:(id)sender{
    NSArray *permissions = @[@"public_profile",@"email"];
    
    [PFFacebookUtils logInWithPermissions:permissions block:^(PFUser *user, NSError *error) {
        if (user==nil) {
            NSLog(@"Uh oh. The user cancelled the Facebook login.");
        } else if (user.isNew) {
            NSLog(@"User signed up and logged in through Facebook!");
        } else {
            NSLog(@"User logged in through Facebook!");
        }
    }];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSArray *permissions = @[@"public_profile",@"email"];
//   
//    [PFFacebookUtils logInWithPermissions:permissions block:^(PFUser *user, NSError *error) {
//        if (user==nil) {
//            NSLog(@"Uh oh. The user cancelled the Facebook login.");
//        } else if (user.isNew) {
//            NSLog(@"User signed up and logged in through Facebook!");
//        } else {
//            NSLog(@"User logged in through Facebook!");
//        }
//    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}




@end

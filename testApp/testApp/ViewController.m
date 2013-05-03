//
//  ViewController.m
//  testApp
//
//  Created by Aaron Burke on 5/2/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_ZERO 0
#define BUTTON_ONE 1

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UILabel *inputLabel = [[UILabel alloc] initWithFrame:CGRectMake(150.0f, 300.0f, 150.0f, 40.0f)];
    if (inputLabel)
    {
        inputLabel.font = [UIFont boldSystemFontOfSize:25.0f];
        inputLabel.text = @"Username:";
        [self.view addSubview:inputLabel];
    }
    
    userNameInput = [[UITextField alloc] initWithFrame:CGRectMake(290.0f, 300.0f, 300.0f, 40.0f)];
    if (userNameInput)
    {
        userNameInput.borderStyle = UITextBorderStyleRoundedRect;
        userNameInput.font = [UIFont systemFontOfSize:20.0f];
        userNameInput.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        [self.view addSubview:userNameInput];
    }
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginBtn)
    {
        loginBtn.tag = BUTTON_ZERO;
        loginBtn.frame = CGRectMake(500.0f, 350.0f, 90.0f, 30.0f);
        [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
        [loginBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginBtn];
    }
    
    enterName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 400.0f, 768.0f, 60.0f)];
    if (enterName) {
        enterName.font = [UIFont boldSystemFontOfSize:25.0f];
        enterName.text = @"Please Enter Username";
        enterName.textColor = [UIColor blueColor];
        enterName.backgroundColor = [UIColor lightGrayColor];
        enterName.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:enterName];
    }
    
    UIButton *dateBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateBtn)
    {
        dateBtn.tag = BUTTON_ONE;
        dateBtn.frame = CGRectMake(309.0f, 500.0f, 150.0f, 80.0f);
        [dateBtn setTitle:@"Show Date" forState:UIControlStateNormal];
        dateBtn.titleLabel.font = [UIFont systemFontOfSize:20.0f];
        [dateBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateBtn];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick:(UIButton*)button
{
    if (button.tag == BUTTON_ZERO)
    {
        NSString *checkInput = [userNameInput text];
        NSMutableString *message = [[NSMutableString alloc] initWithCapacity:50];
        if (checkInput.length != 0) {
            [message appendFormat:@"User: %@ has been logged in.", checkInput];
            enterName.text = message;
        } else {
            enterName.text = @"Username cannot be empty!";
        }
    }
    else if (button.tag == BUTTON_ONE)
    {
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

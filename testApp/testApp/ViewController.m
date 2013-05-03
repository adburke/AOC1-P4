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
#define BUTTON_TWO 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // Username Label
    UILabel *inputLabel = [[UILabel alloc] initWithFrame:CGRectMake(150.0f, 300.0f, 150.0f, 40.0f)];
    if (inputLabel)
    {
        inputLabel.font = [UIFont boldSystemFontOfSize:25.0f];
        inputLabel.text = @"Username:";
        [self.view addSubview:inputLabel];
    }
    // Username Input Box
    userNameInput = [[UITextField alloc] initWithFrame:CGRectMake(290.0f, 300.0f, 300.0f, 40.0f)];
    if (userNameInput)
    {
        userNameInput.borderStyle = UITextBorderStyleRoundedRect;
        userNameInput.font = [UIFont systemFontOfSize:20.0f];
        userNameInput.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        [self.view addSubview:userNameInput];
    }
    // Login Button
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginBtn)
    {
        loginBtn.tag = BUTTON_ZERO;
        loginBtn.frame = CGRectMake(500.0f, 350.0f, 90.0f, 30.0f);
        [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
        [loginBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginBtn];
    }
    // Message Label
    enterName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 400.0f, 768.0f, 60.0f)];
    if (enterName) {
        enterName.font = [UIFont boldSystemFontOfSize:25.0f];
        enterName.text = @"Please Enter Username";
        enterName.textColor = [UIColor blueColor];
        enterName.backgroundColor = [UIColor lightGrayColor];
        enterName.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:enterName];
    }
    // Date Button
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
    // Info Button
    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoBtn)
    {
        infoBtn.tag = BUTTON_TWO;
        infoBtn.frame = CGRectMake(50.0f, 800.0f, 25.0f, 50.0f);
        [infoBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoBtn];
    }
    // Info Label
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 850.0f, 580.0f, 60.0f)];
    if (infoLabel)
    {
        infoLabel.text = @"";
        infoLabel.font = [UIFont systemFontOfSize:25.0f];
        infoLabel.textColor = [UIColor greenColor];
        [self.view addSubview:infoLabel];
    }
        
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick:(UIButton*)button
{
    // Login Button Pressed
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
    // Date Button Pressed
    else if (button.tag == BUTTON_ONE)
    {
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        if (dateFormat)
        {
            [dateFormat setDateFormat:@"MMMM d, yyyy HH:mm:ss a \r zzzz"];
            NSString *dateString = [[NSString alloc] initWithString:[dateFormat stringFromDate:date]];
            
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Date" message:dateString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
            if (alertView)
            {
                [alertView show];
            }
        }
    }
    // Info Button Pressed
    else if (button.tag == BUTTON_TWO)
    {
        infoLabel.text = @"This application was created by: Aaron Burke";
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

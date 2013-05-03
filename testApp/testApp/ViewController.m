//
//  ViewController.m
//  testApp
//
//  Created by Aaron Burke on 5/2/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

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
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

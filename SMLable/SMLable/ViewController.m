//
//  ViewController.m
//  SMLable
//
//  Created by Sumit Mundra on 02/06/14.
//  Copyright (c) 2014 Sumit Mundra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.lbl.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)didLetterFound:(char)letter
{
    NSLog(@"%c",letter);
}

@end

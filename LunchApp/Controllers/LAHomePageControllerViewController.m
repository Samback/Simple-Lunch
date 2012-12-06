//
//  LAHomePageControllerViewController.m
//  LunchApp
//
//  Created by Max on 03.12.12.
//  Copyright (c) 2012 Max Tymchii. All rights reserved.
//

#import "LAHomePageControllerViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface LAHomePageControllerViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nameOfFood;
@property (strong, nonatomic) IBOutlet UITextView *descriptionOfFood;

@end

@implementation LAHomePageControllerViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    _descriptionOfFood.layer.cornerRadius = 10;
    _descriptionOfFood.layer.borderWidth = 1;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clicktoContinue:(UIBarButtonItem *)sender {
    [_descriptionOfFood resignFirstResponder];
    [_nameOfFood resignFirstResponder];
    [LAHelpMethods setNameOfFood:_nameOfFood.text];
    [LAHelpMethods setDescriptionOfFood:_descriptionOfFood.text];
    [self performSegueWithIdentifier:@"LAAddPhotosController" sender:self];     
}

- (void)viewDidUnload {
    [self setNameOfFood:nil];
    [self setDescriptionOfFood:nil];
    [super viewDidUnload];
}
@end

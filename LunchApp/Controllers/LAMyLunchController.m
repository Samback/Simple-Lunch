//
//  LAMyLunchController.m
//  LunchApp
//
//  Created by Max on 03.12.12.
//  Copyright (c) 2012 Max Tymchii. All rights reserved.
//

#import "LAMyLunchController.h"
#import "LunchPrevious.h"

@interface LAMyLunchController ()
@property (strong, nonatomic) IBOutlet UILabel *lunchName;
@property (strong, nonatomic) IBOutlet UITextView *LunchDescription;
@property (nonatomic, strong) NSArray *selectedImages;
@property (strong, nonatomic) IBOutlet UIImageView *firstImage;
@property (strong, nonatomic) IBOutlet UIImageView *secondImage;
@property (strong, nonatomic) IBOutlet UIImageView *thirdImage;
@property (strong, nonatomic) IBOutlet UIImageView *fourthImage;
@property (nonatomic, strong) NSArray *lunchImages;
@end

@implementation LAMyLunchController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationItem.backBarButtonItem.title = @"Back";
    _LunchDescription.text = [LAHelpMethods descriptionOfFood];
    _lunchName.text = [LAHelpMethods nameOfFood];
	// Do any additional setup after loading the view.
    _lunchImages = @[_firstImage, _secondImage, _thirdImage, _fourthImage];
    CGRect lunchNameFrame = _lunchName.frame;
    CGRect descriptionFrame = _LunchDescription.frame;
    if (_selectedImages.count == 0) {
        descriptionFrame.origin.y = lunchNameFrame.origin.y + lunchNameFrame.size.height + 20;
    }
    else if (_selectedImages.count < 3){
        descriptionFrame.origin.y = lunchNameFrame.origin.y + lunchNameFrame.size.height + 110;
    }
    else{
         descriptionFrame.origin.y = lunchNameFrame.origin.y + lunchNameFrame.size.height + 210;
    }
    _LunchDescription.frame = descriptionFrame;
    for (int i = 0; i < _selectedImages.count; i++) {
//       // UIImageView *img = (UIImageView *)_lunchImages[i];
//        UIImageView *img = [[UIImageView alloc] initWithImage:[LAHelpMethods imagefromAsset:(NSURL *)_selectedImages[i]]];
//        img.backgroundColor = [UIColor redColor];
//        ((UIImageView *)_lunchImages[i]).image =  img.image ;
        UIImageView *currentIMV= (UIImageView*)_lunchImages[i];
        CGRect imRect = currentIMV.frame;
        imRect.origin.y = lunchNameFrame.origin.y + lunchNameFrame.size.height;
        currentIMV.frame = imRect;
        [LAHelpMethods imagefromAsset:_selectedImages[i] atImageView:currentIMV andRect:imRect];
        
    }
        
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationItem.backBarButtonItem.title = @"Back";
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
     self.navigationItem.backBarButtonItem.title = @"Back";
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addSelectedImages:(NSArray *)images{
    _selectedImages = images;
}
- (IBAction)saveToListOfLunches:(UIBarButtonItem *)sender {
    [LunchPrevious newLunchWithName:_lunchName.text description:_LunchDescription.text andPhotos:_selectedImages];
    NSError *error = nil;
    [DELEGATE.managedObjectContext save:&error];
    if (error) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:APP_NAME message:DONT_SAVED delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
}

- (void)viewDidUnload {
    [self setLunchName:nil];
    [self setLunchDescription:nil];
    [self setLunchImages:nil];
    [self setFirstImage:nil];
    [self setSecondImage:nil];
    [self setThirdImage:nil];
    [self setFourthImage:nil];
    [super viewDidUnload];
}

@end

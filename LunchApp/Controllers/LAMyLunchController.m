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
@property (nonatomic, strong) NSDictionary *aboutLunch;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (nonatomic) BOOL saved;
@end

@implementation LAMyLunchController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationItem.backBarButtonItem.title = @"Back";
    [self fillLabelsWithText];
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
        descriptionFrame.origin.y = 270;
    }
    _LunchDescription.frame = descriptionFrame;
    for (int i = 0; i < _selectedImages.count; i++) {
        UIImageView *currentIMV= (UIImageView*)_lunchImages[i];
        CGRect imRect = currentIMV.frame;
        currentIMV.frame = imRect;
        dispatch_async(dispatch_get_main_queue(), ^{
            [LAHelpMethods imagefromAsset:[NSURL URLWithString:_selectedImages[i]] atImageView:currentIMV andRect:imRect];
            
        });
    }
    if (!_saved){
        self.navigationItem.rightBarButtonItem = nil;
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

- (void)addSelectedImages:(NSArray *)images withInfo:(NSDictionary *)info andPossibilityToSave:(BOOL)save{
    _aboutLunch = info;
    _selectedImages = images;
    _saved = save;
}
- (IBAction)saveToListOfLunches:(UIBarButtonItem *)sender {
    [LunchPrevious newLunchWithName:_lunchName.text description:_LunchDescription.text andPhotos:_selectedImages];
    NSError *error = nil;
    [DELEGATE.managedObjectContext save:&error];
    if (error) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:APP_NAME message:DONT_SAVED delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    else{
        self.navigationItem.rightBarButtonItem = nil;
        DELEGATE.pathToJustCaputuredPhoto = @"";
        DELEGATE.justcapturedPhoto = nil;
    }
}

- (void)fillLabelsWithText{
        _lunchName.text = [_aboutLunch valueForKey:NAME];//_aboutLunch[NAME];
        _LunchDescription.text = [_aboutLunch valueForKey:DESCRIPTION];//_aboutLunch[DESCRIPTION];
}

- (void)viewDidUnload {
    [self setLunchName:nil];
    [self setLunchDescription:nil];
    [self setLunchImages:nil];
    [self setFirstImage:nil];
    [self setSecondImage:nil];
    [self setThirdImage:nil];
    [self setFourthImage:nil];
    [self setSaveButton:nil];
    [super viewDidUnload];
}

@end

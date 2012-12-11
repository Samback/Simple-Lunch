//
//  LAcameraViewController.m
//  LunchApp
//
//  Created by Max on 06.12.12.
//  Copyright (c) 2012 Max Tymchii. All rights reserved.
//

#import "LACameraViewController.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <MobileCoreServices/UTCoreTypes.h>

@interface LACameraViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
{
    BOOL isShouldHide;
}
@property (nonatomic, strong) UIImagePickerController *imagePicker;
@end

@implementation LACameraViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    _imagePicker = [[UIImagePickerController alloc] init];
    _imagePicker.delegate = self;
    isShouldHide = NO;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if (isShouldHide) {
        isShouldHide = NO;
        [self dismissViewControllerAnimated:NO completion:^{
            self.tabBarController.selectedIndex = 0;           
        }];        
    }
    else{
        [self takePicture];
    }    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)takePicture{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        [_imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    else{
        [_imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    [self presentModalViewController:_imagePicker animated:YES];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:^{
        self.tabBarController.selectedIndex = 0;
    }];
    isShouldHide = YES;
}
-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    //    [self.imageView setImage:image];
    NSString *mediaType = [info objectForKey: UIImagePickerControllerMediaType];
    UIImage *originalImage, *editedImage, *imageToSave;
    
    // Handle a still image capture
    if (CFStringCompare ((CFStringRef) mediaType, kUTTypeImage, 0)
        == kCFCompareEqualTo) {
        
        editedImage = (UIImage *) [info objectForKey:
                                   UIImagePickerControllerEditedImage];
        originalImage = (UIImage *) [info objectForKey:
                                     UIImagePickerControllerOriginalImage];
        
        if (editedImage) {
            imageToSave = editedImage;
        } else {
            imageToSave = originalImage;
        }
        NSLog(@"PATH %@",[info  objectForKey:UIImagePickerControllerReferenceURL]);
        DELEGATE.pathToJustCaputuredPhoto = [[info  objectForKey:UIImagePickerControllerReferenceURL] description];
        DELEGATE.justcapturedPhoto = imageToSave;
        // Save the new image (original or edited) to the Camera Roll
        UIImageWriteToSavedPhotosAlbum (imageToSave, nil, nil , nil);
    }
    
    // Handle a movie capture
    if (CFStringCompare ((CFStringRef) mediaType, kUTTypeMovie, 0)
        == kCFCompareEqualTo) {
        
        NSString *moviePath = [[info objectForKey:
                                UIImagePickerControllerMediaURL] path];
        
        if (UIVideoAtPathIsCompatibleWithSavedPhotosAlbum (moviePath)) {
            UISaveVideoAtPathToSavedPhotosAlbum (
                                                 moviePath, nil, nil, nil);
        }
    }
    isShouldHide = YES;
    [self dismissViewControllerAnimated:YES completion:^{
        self.tabBarController.selectedIndex = 0;
    }];
}

@end

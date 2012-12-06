//
//  LAAddPhotosController.m
//  LunchApp
//
//  Created by Max on 03.12.12.
//  Copyright (c) 2012 Max Tymchii. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "LAAddPhotosController.h"
#import "LAMyLunchController.h"

@interface LAAddPhotosController ()<UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIButton *photoOne;
@property (strong, nonatomic) IBOutlet UIButton *photoTwo;
@property (strong, nonatomic) IBOutlet UIButton *photoThree;
@property (strong, nonatomic) IBOutlet UIButton *photoFour;
@property (strong, nonatomic) NSArray *buttons;
@property (strong, nonatomic) UIActionSheet *actionSheet;
@property (nonatomic, strong) UIImagePickerController *pickerController;
@property (nonatomic, strong) UIButton *currentButton;
@property (nonatomic, strong) NSMutableArray *selectedImages;

- (void)openNext;
@end

@implementation LAAddPhotosController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _buttons = @[_photoOne, _photoTwo, _photoThree, _photoFour];
    int i = 0;
    for (UIButton *button in _buttons){
        button.layer.cornerRadius = 15;
        [button addTarget:self action:@selector(addPhoto:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i++;
    }
    ((UIButton *)_buttons[0]).hidden = NO;
    _actionSheet = [[UIActionSheet alloc] initWithTitle:@"Select Image From Library" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Image Gallery", nil];
    _pickerController = [[UIImagePickerController alloc] init];
    _pickerController.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    _pickerController.delegate = self;
    _pickerController.allowsEditing = NO;
    _selectedImages = [NSMutableArray arrayWithCapacity:4];

}
- (IBAction)continue:(UIBarButtonItem *)sender {
     [self performSegueWithIdentifier:@"LAMyLunchController" sender:self];  
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"LAMyLunchController"])
    {
        LAMyLunchController *vc = [segue destinationViewController];
        [vc addSelectedImages:_selectedImages];
    }
}

- (void)addPhoto:(UIButton *)button{
    _currentButton = button;
    [_actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        NSLog(@"OK");
        [self openAlbum];
    } else if (buttonIndex == 1) {
        NSLog(@"Cancel");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (void)openAlbum{
    [self presentModalViewController:_pickerController animated:YES];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *originalImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    CGSize newSize =  CGSizeMake(125, 125);
    UIGraphicsBeginImageContext(newSize);
    [originalImage drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [_currentButton setBackgroundImage:newImage forState:UIControlStateNormal];
    [_selectedImages setObject:newImage atIndexedSubscript:_currentButton.tag];
    [self openNext];
    [self dismissModalViewControllerAnimated:YES];
}

- (void)openNext{
    if ((_buttons.count) > (_currentButton.tag + 1)) {
        ((UIButton *)(_buttons[(_currentButton.tag + 1)])).hidden = NO;
    }
}
#pragma mark - When Tap Cancel

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissModalViewControllerAnimated:YES];
}

- (void)viewDidUnload {
    [self setPhotoOne:nil];
    [self setPhotoTwo:nil];
    [self setPhotoThree:nil];
    [self setPhotoFour:nil];
    [super viewDidUnload];
}
@end

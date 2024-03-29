//
//  LAHelpMethods.m
//  LunchApp
//
//  Created by Max on 03.12.12.
//  Copyright (c) 2012 Max Tymchii. All rights reserved.
//
#import "LAHelper.h"
#import "LAHelpMethods.h"
#import <ifaddrs.h>
#import <arpa/inet.h>
#import <sys/utsname.h>

@interface LAHelpMethods()
+ (void)saveValue:(NSString *)value forKey:(NSString *)key;
+ (NSString *)valueForKey:(NSString *)key;
@end

@implementation LAHelpMethods



+ (void)setNameOfFood:(NSString *)foodName{
    [LAHelpMethods saveValue:foodName forKey:FOOD_NAME_KEY];
}


+ (NSString *)nameOfFood{
        return [LAHelpMethods valueForKey:FOOD_NAME_KEY];
}

+ (void)setDescriptionOfFood:(NSString *)foodDescription{
    [LAHelpMethods saveValue:foodDescription forKey:FOOD_DESCRIPTION_KEY];
}


+ (NSString *)descriptionOfFood{
    return [LAHelpMethods valueForKey:FOOD_DESCRIPTION_KEY];
}

+ (void)saveValue:(NSString *)value forKey:(NSString *)key{
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
   
    [prefs setObject:value forKey:key];
     [prefs synchronize];
}

+ (NSString *)valueForKey:(NSString *)key{
     NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    return [prefs valueForKey:key];
}


+ (NSString *)setUUID
{
    // getting an NSString
    NSString *uuid = nil;
    // Create universally unique identifier (object)
    CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    
    // Get the string representation of CFUUID object.
    uuid = (__bridge NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    
    // If needed, here is how to get a representation in bytes, returned as a structure
    // typedef struct {
    //   UInt8 byte0;
    //   UInt8 byte1;
    //   ...
    //   UInt8 byte15;
    // } CFUUIDBytes;
    CFUUIDBytes bytes = CFUUIDGetUUIDBytes(uuidObject);
    
    CFRelease(uuidObject);
    return uuid;
}

+ (void)imagefromAsset:(NSURL *)referenceURL atImageView:(UIImageView *)imageView andRect:(CGRect )rect{
   __block UIImage  *copyOfOriginalImage = nil;
    ALAssetsLibrary *library = [[ALAssetsLibrary alloc] init];
    [library assetForURL:referenceURL resultBlock:^(ALAsset *asset)
     {
        copyOfOriginalImage = [UIImage imageWithCGImage:[[asset defaultRepresentation] fullResolutionImage]];
         
         CGSize newSize =  rect.size;
         UIGraphicsBeginImageContext(newSize);         
         [copyOfOriginalImage drawInRect:CGRectMake(0, 0, newSize.width,newSize.height)];
         UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
         UIGraphicsEndImageContext();
         imageView.image = newImage;
         //rect.origin.y  += 20;
         NSLog(@"Rect params out %@", NSStringFromCGRect(rect));
         imageView.frame = rect;
         imageView.backgroundColor = [UIColor redColor];
         [imageView reloadInputViews];
     }
            failureBlock:^(NSError *error)
     {
         // error handling
     }];
}

@end

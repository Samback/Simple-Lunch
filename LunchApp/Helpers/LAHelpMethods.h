//
//  LAHelpMethods.h
//  LunchApp
//
//  Created by Max on 03.12.12.
//  Copyright (c) 2012 Max Tymchii. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LAHelpMethods : NSObject

+ (void)setNameOfFood:(NSString *)foodName;
+ (NSString *)nameOfFood;
+ (void)setDescriptionOfFood:(NSString *)foodDescription;

+ (NSString *)descriptionOfFood;
+ (NSString *)setUUID;
+ (void)imagefromAsset:(NSURL *)referenceURL atImageView:(UIImageView *)imageView andRect:(CGRect )rect;
@end

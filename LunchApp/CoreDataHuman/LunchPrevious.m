#import "LunchPrevious.h"

@implementation LunchPrevious

+ (void)newLunchWithName:(NSString *)name description:(NSString *)description lunchDate:(NSDate *)date andPhotos:(NSArray *)photosArray{
    LunchPrevious *lunch = [NSEntityDescription insertNewObjectForEntityForName:@"LunchPrevious" inManagedObjectContext:DELEGATE.managedObjectContext];
    lunch.nameOfLunch = name;
    lunch.descriptionOfLunch = description;
    lunch.dateLunch = [NSDate date];
    lunch.uId = [LAHelpMethods setUUID];    
}

@end

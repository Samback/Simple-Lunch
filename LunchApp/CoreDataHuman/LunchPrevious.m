#import "LunchPrevious.h"
#import "Photo.h"

@implementation LunchPrevious

+ (void)newLunchWithName:(NSString *)name description:(NSString *)description andPhotos:(NSArray *)photosArray{
    LunchPrevious *lunch = [NSEntityDescription insertNewObjectForEntityForName:@"LunchPrevious" inManagedObjectContext:DELEGATE.managedObjectContext];
    lunch.nameOfLunch = name;
    lunch.descriptionOfLunch = description;
    lunch.dateLunch = [NSDate date];
    for (NSURL *path in photosArray) {
        [lunch addPhotosObject:[Photo photoWithPath:path andContex:DELEGATE.managedObjectContext]];
    }
}

+ (NSArray *)allLunches{
    NSArray *lunches = [NSArray array];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    request.entity = [NSEntityDescription entityForName:@"LunchPrevious" inManagedObjectContext:DELEGATE.managedObjectContext];
    NSError *error = nil;
    lunches = [DELEGATE.managedObjectContext executeFetchRequest:request error:&error];
    if (error) {
        return nil;
    }
    return lunches;
}

@end

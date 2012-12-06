#import "Photos.h"

@implementation Photos

// Custom logic goes here.
+ (void)newLunchPhotoWithPath:(NSString *)path uniquID:(NSString *)uid{
    Photos *photo = [NSEntityDescription insertNewObjectForEntityForName:@"Photos" inManagedObjectContext:DELEGATE.managedObjectContext];
    photo.uid = uid;
    photo.photoPath = path;
}

@end

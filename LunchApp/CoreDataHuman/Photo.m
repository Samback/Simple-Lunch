#import "Photo.h"

@implementation Photo

// Custom logic goes here.
+ (Photo *)photoWithPath:(NSURL *)imagePath andContex:(NSManagedObjectContext *)context{
    Photo *photo = nil;
    photo = [NSEntityDescription insertNewObjectForEntityForName:@"Photo" inManagedObjectContext:context];
    photo.photoPath = [imagePath description];
    return photo;
}

@end

#import "Photo.h"

@implementation Photo

// Custom logic goes here.
+ (Photo *)photoWithPath:(NSString *)imagePath andContex:(NSManagedObjectContext *)context{
    Photo *photo = nil;
    photo = [NSEntityDescription insertNewObjectForEntityForName:@"Photo" inManagedObjectContext:context];
    photo.photoPath = [imagePath description];
    return photo;
}

@end

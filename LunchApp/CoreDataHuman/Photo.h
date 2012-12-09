#import "_Photo.h"

@interface Photo : _Photo {}
// Custom logic goes here.
+ (Photo *)photoWithPath:(NSURL *)imagePath andContex:(NSManagedObjectContext *)context;
@end

#import "_Photo.h"

@interface Photo : _Photo {}
// Custom logic goes here.
+ (Photo *)photoWithPath:(NSString *)imagePath andContex:(NSManagedObjectContext *)context;
@end

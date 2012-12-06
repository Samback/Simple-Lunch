#import "LunchPrevious.h"

@implementation LunchPrevious

//+ (LunchPrevious *)withLunchName:(NSString *)nameLunch descriptionOfLunch:(NSString *)descriptionName lunchDate:(NSDate *)dateLunch andUID:(NSString *)uid
//{
//    LunchPrevious *lunch = nil;
//    NSFetchRequest *request = [[NSFetchRequest alloc] init];
//    NSManagedObjectContext * context = user.managedObjectContext;
//    
//    request.entity = [NSEntityDescription entityForName:@"DayData" inManagedObjectContext:context];
//    request.predicate = [NSPredicate predicateWithFormat:@"(%K == %@) and (%K == %@)", @"day", currentdate, @"dayOwner", user];
//    
//    NSError *error = nil;
//    dayData = [[context executeFetchRequest:request error:&error] lastObject];
//    if (!error && !dayData) {
//        dayData = [NSEntityDescription insertNewObjectForEntityForName:@"DayData" inManagedObjectContext:context];
//        dayData.day = currentdate;
//        dayData.userNews = @"";
//        dayData.dayOwner = user;
//    }
//    return dayData;
//}


@end

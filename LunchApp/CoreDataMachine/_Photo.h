// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Photo.h instead.

#import <CoreData/CoreData.h>


extern const struct PhotoAttributes {
	__unsafe_unretained NSString *photoPath;
} PhotoAttributes;

extern const struct PhotoRelationships {
	__unsafe_unretained NSString *lunchTaker;
} PhotoRelationships;

extern const struct PhotoFetchedProperties {
} PhotoFetchedProperties;

@class LunchPrevious;



@interface PhotoID : NSManagedObjectID {}
@end

@interface _Photo : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (PhotoID*)objectID;




@property (nonatomic, strong) NSString* photoPath;


//- (BOOL)validatePhotoPath:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) LunchPrevious* lunchTaker;

//- (BOOL)validateLunchTaker:(id*)value_ error:(NSError**)error_;





@end

@interface _Photo (CoreDataGeneratedAccessors)

@end

@interface _Photo (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitivePhotoPath;
- (void)setPrimitivePhotoPath:(NSString*)value;





- (LunchPrevious*)primitiveLunchTaker;
- (void)setPrimitiveLunchTaker:(LunchPrevious*)value;


@end

// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Photos.h instead.

#import <CoreData/CoreData.h>


extern const struct PhotosAttributes {
	__unsafe_unretained NSString *photoPath;
	__unsafe_unretained NSString *uid;
} PhotosAttributes;

extern const struct PhotosRelationships {
	__unsafe_unretained NSString *photsArray;
} PhotosRelationships;

extern const struct PhotosFetchedProperties {
} PhotosFetchedProperties;

@class LunchPrevious;




@interface PhotosID : NSManagedObjectID {}
@end

@interface _Photos : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (PhotosID*)objectID;




@property (nonatomic, strong) NSString* photoPath;


//- (BOOL)validatePhotoPath:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* uid;


//- (BOOL)validateUid:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) LunchPrevious* photsArray;

//- (BOOL)validatePhotsArray:(id*)value_ error:(NSError**)error_;





@end

@interface _Photos (CoreDataGeneratedAccessors)

@end

@interface _Photos (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitivePhotoPath;
- (void)setPrimitivePhotoPath:(NSString*)value;




- (NSString*)primitiveUid;
- (void)setPrimitiveUid:(NSString*)value;





- (LunchPrevious*)primitivePhotsArray;
- (void)setPrimitivePhotsArray:(LunchPrevious*)value;


@end

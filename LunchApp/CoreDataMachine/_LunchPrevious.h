// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LunchPrevious.h instead.

#import <CoreData/CoreData.h>


extern const struct LunchPreviousAttributes {
	__unsafe_unretained NSString *dateLunch;
	__unsafe_unretained NSString *descriptionOfLunch;
	__unsafe_unretained NSString *nameOfLunch;
	__unsafe_unretained NSString *uId;
} LunchPreviousAttributes;

extern const struct LunchPreviousRelationships {
	__unsafe_unretained NSString *photosOwner;
} LunchPreviousRelationships;

extern const struct LunchPreviousFetchedProperties {
} LunchPreviousFetchedProperties;

@class Photos;






@interface LunchPreviousID : NSManagedObjectID {}
@end

@interface _LunchPrevious : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (LunchPreviousID*)objectID;




@property (nonatomic, strong) NSDate* dateLunch;


//- (BOOL)validateDateLunch:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* descriptionOfLunch;


//- (BOOL)validateDescriptionOfLunch:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* nameOfLunch;


//- (BOOL)validateNameOfLunch:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* uId;


//- (BOOL)validateUId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Photos* photosOwner;

//- (BOOL)validatePhotosOwner:(id*)value_ error:(NSError**)error_;





@end

@interface _LunchPrevious (CoreDataGeneratedAccessors)

@end

@interface _LunchPrevious (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveDateLunch;
- (void)setPrimitiveDateLunch:(NSDate*)value;




- (NSString*)primitiveDescriptionOfLunch;
- (void)setPrimitiveDescriptionOfLunch:(NSString*)value;




- (NSString*)primitiveNameOfLunch;
- (void)setPrimitiveNameOfLunch:(NSString*)value;




- (NSString*)primitiveUId;
- (void)setPrimitiveUId:(NSString*)value;





- (Photos*)primitivePhotosOwner;
- (void)setPrimitivePhotosOwner:(Photos*)value;


@end

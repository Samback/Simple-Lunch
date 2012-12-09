// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LunchPrevious.h instead.

#import <CoreData/CoreData.h>


extern const struct LunchPreviousAttributes {
	__unsafe_unretained NSString *dateLunch;
	__unsafe_unretained NSString *descriptionOfLunch;
	__unsafe_unretained NSString *nameOfLunch;
} LunchPreviousAttributes;

extern const struct LunchPreviousRelationships {
	__unsafe_unretained NSString *photos;
} LunchPreviousRelationships;

extern const struct LunchPreviousFetchedProperties {
} LunchPreviousFetchedProperties;

@class Photo;





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





@property (nonatomic, strong) NSSet* photos;

- (NSMutableSet*)photosSet;





@end

@interface _LunchPrevious (CoreDataGeneratedAccessors)

- (void)addPhotos:(NSSet*)value_;
- (void)removePhotos:(NSSet*)value_;
- (void)addPhotosObject:(Photo*)value_;
- (void)removePhotosObject:(Photo*)value_;

@end

@interface _LunchPrevious (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveDateLunch;
- (void)setPrimitiveDateLunch:(NSDate*)value;




- (NSString*)primitiveDescriptionOfLunch;
- (void)setPrimitiveDescriptionOfLunch:(NSString*)value;




- (NSString*)primitiveNameOfLunch;
- (void)setPrimitiveNameOfLunch:(NSString*)value;





- (NSMutableSet*)primitivePhotos;
- (void)setPrimitivePhotos:(NSMutableSet*)value;


@end

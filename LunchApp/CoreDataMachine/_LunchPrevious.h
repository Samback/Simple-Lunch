// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LunchPrevious.h instead.

#import <CoreData/CoreData.h>


extern const struct LunchPreviousAttributes {
	__unsafe_unretained NSString *dataLunch;
	__unsafe_unretained NSString *descriptionOfLunch;
	__unsafe_unretained NSString *nameOfLunch;
	__unsafe_unretained NSString *uId;
} LunchPreviousAttributes;

extern const struct LunchPreviousRelationships {
} LunchPreviousRelationships;

extern const struct LunchPreviousFetchedProperties {
} LunchPreviousFetchedProperties;







@interface LunchPreviousID : NSManagedObjectID {}
@end

@interface _LunchPrevious : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (LunchPreviousID*)objectID;




@property (nonatomic, strong) NSDate* dataLunch;


//- (BOOL)validateDataLunch:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* descriptionOfLunch;


//- (BOOL)validateDescriptionOfLunch:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* nameOfLunch;


//- (BOOL)validateNameOfLunch:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber* uId;


@property int16_t uIdValue;
- (int16_t)uIdValue;
- (void)setUIdValue:(int16_t)value_;

//- (BOOL)validateUId:(id*)value_ error:(NSError**)error_;






@end

@interface _LunchPrevious (CoreDataGeneratedAccessors)

@end

@interface _LunchPrevious (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveDataLunch;
- (void)setPrimitiveDataLunch:(NSDate*)value;




- (NSString*)primitiveDescriptionOfLunch;
- (void)setPrimitiveDescriptionOfLunch:(NSString*)value;




- (NSString*)primitiveNameOfLunch;
- (void)setPrimitiveNameOfLunch:(NSString*)value;




- (NSNumber*)primitiveUId;
- (void)setPrimitiveUId:(NSNumber*)value;

- (int16_t)primitiveUIdValue;
- (void)setPrimitiveUIdValue:(int16_t)value_;




@end

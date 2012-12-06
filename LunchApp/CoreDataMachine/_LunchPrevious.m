// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LunchPrevious.m instead.

#import "_LunchPrevious.h"

const struct LunchPreviousAttributes LunchPreviousAttributes = {
	.dateLunch = @"dateLunch",
	.descriptionOfLunch = @"descriptionOfLunch",
	.nameOfLunch = @"nameOfLunch",
	.uId = @"uId",
};

const struct LunchPreviousRelationships LunchPreviousRelationships = {
	.photosOwner = @"photosOwner",
};

const struct LunchPreviousFetchedProperties LunchPreviousFetchedProperties = {
};

@implementation LunchPreviousID
@end

@implementation _LunchPrevious

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"LunchPrevious" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"LunchPrevious";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"LunchPrevious" inManagedObjectContext:moc_];
}

- (LunchPreviousID*)objectID {
	return (LunchPreviousID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic dateLunch;






@dynamic descriptionOfLunch;






@dynamic nameOfLunch;






@dynamic uId;






@dynamic photosOwner;

	






@end

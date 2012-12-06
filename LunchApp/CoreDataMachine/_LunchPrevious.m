// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LunchPrevious.m instead.

#import "_LunchPrevious.h"

const struct LunchPreviousAttributes LunchPreviousAttributes = {
	.dataLunch = @"dataLunch",
	.descriptionOfLunch = @"descriptionOfLunch",
	.nameOfLunch = @"nameOfLunch",
	.uId = @"uId",
};

const struct LunchPreviousRelationships LunchPreviousRelationships = {
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
	
	if ([key isEqualToString:@"uIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"uId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic dataLunch;






@dynamic descriptionOfLunch;






@dynamic nameOfLunch;






@dynamic uId;



- (int16_t)uIdValue {
	NSNumber *result = [self uId];
	return [result shortValue];
}

- (void)setUIdValue:(int16_t)value_ {
	[self setUId:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveUIdValue {
	NSNumber *result = [self primitiveUId];
	return [result shortValue];
}

- (void)setPrimitiveUIdValue:(int16_t)value_ {
	[self setPrimitiveUId:[NSNumber numberWithShort:value_]];
}










@end

// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Photos.m instead.

#import "_Photos.h"

const struct PhotosAttributes PhotosAttributes = {
	.photoPath = @"photoPath",
	.uid = @"uid",
};

const struct PhotosRelationships PhotosRelationships = {
	.photsArray = @"photsArray",
};

const struct PhotosFetchedProperties PhotosFetchedProperties = {
};

@implementation PhotosID
@end

@implementation _Photos

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Photos" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Photos";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Photos" inManagedObjectContext:moc_];
}

- (PhotosID*)objectID {
	return (PhotosID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic photoPath;






@dynamic uid;






@dynamic photsArray;

	






@end
